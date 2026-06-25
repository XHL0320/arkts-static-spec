# 03_Types AI 复测与评审报告

## 1. 评审结论

本次对 `C:\Users\Administrator\Desktop\ARKTS_STATIC_TEST\03_Types` 章节进行了全量复测与内容审视。

结论如下：

- `03_Types` 章节实际用例数量与 `test_manifest.json` 声明一致，共 `728` 条。
- WSL 全量复测结果为 `714 pass / 14 fail`。
- 失败项中，大部分是已知的 “spec 与当前实现不一致” 看护用例，保留为 `compile-fail` 是合理的。
- `TYP_03_18_01_005_RUNTIME_UNSAFE_CALL_ERROR.ets` 是测试用例自身设计问题，不应算作实现问题。
- `issue_report.md` 中 `TYP_03_06_02_028` 记录已过期，当前用例已经被设计为 runtime throws 并复测通过。
- `bigint` 混合关系运算存在 spec 文档冲突：`types.md` 说应报错，`expressions.md` 又明确允许 `bigint` 与 numeric relational comparison。该问题不应简单定性为实现 bug，应先反馈 spec 澄清。

## 2. 复测环境与结果

复测目录：

```text
/home/xhl/arkcompiler/test/arkts_static_03_types_full_review
```

复测日志：

```text
/home/xhl/arkcompiler/test/arkts_static_03_types_full_review/full_review_run.log
```

复测命令说明：

- 原脚本 `run_types_cases_wsl.sh` 默认只执行 `3.1_Predefined_Types`。
- 本次通过 `SECTIONS` 显式传入 `test_manifest.json` 中全部非空章节。

复测结果：

```text
Total: 728  Pass: 714  Fail: 14
```

失败用例：

```text
TYP_03_14_014_FAIL_BIGINT_GT_INT.ets
TYP_03_14_016_FAIL_BIGINT_LT_DOUBLE.ets
TYP_03_18_01_003_FAIL_FUNCTION_DIRECT_CALL.ets
TYP_03_18_01_005_RUNTIME_UNSAFE_CALL_ERROR.ets
TYP_03_18_012_FAIL_FUNCTION_TYPE_UNION_NO_PARENS.ets
TYP_03_18_014_FAIL_FUNCTION_DIRECT_CALL.ets
TYP_03_19_01_012_FAIL_READONLY_WRITE.ets
TYP_03_19_02_005_FAIL_DIFF_FIELD_TYPE.ets
TYP_03_19_03_007_FAIL_KEYOF_NON_CLASS.ets
TYP_03_19_008_FAIL_UNION_DIFF_FIELD_TYPE.ets
TYP_03_21_03_006_FAIL_PARTIAL_NON_CLASS.ets
TYP_03_21_04_006_FAIL_REQUIRED_NON_CLASS.ets
TYP_03_21_05_004_FAIL_NON_CLASS.ets
TYP_03_08_007_FAIL_ANY_FIELD_ACCESS.ets
```

## 3. 数量与结构检查

实际 `.ets` 用例统计与 `test_manifest.json` 总数一致：

```text
Total = 728
```

空聚合目录：

```text
3.6_Value_Types
3.21_Utility_Types
```

文件命名、目录和 `@expect` 一致性扫描结果：

```text
未发现 compile-pass 目录中存在 @expect compile-fail 且文件名为 PASS 的直接错配。
未发现 compile-fail 目录中存在 @expect compile-pass 且文件名为 FAIL 的直接错配。
```

## 4. 重点问题一：TYP_03_18_01_005 是用例设计问题

失败用例：

```text
3.18.1_Type_Function/runtime/TYP_03_18_01_005_RUNTIME_UNSAFE_CALL_ERROR.ets
```

用例头部标注：

```ts
@runtime-throws=Error
```

但代码内部写法是：

```ts
try {
  f.unsafeCall()
} catch (e) {
  console.log("unsafeCall with wrong number of arguments throws: " + e)
}
```

问题：

- `@runtime-throws=Error` 表示复测脚本期望运行时出现未捕获异常。
- 但用例代码内部已经 `try/catch` 捕获异常。
- 因此运行不会出现 `Unhandled exception`，脚本判定失败是合理的。

整改建议二选一：

```text
方案 A：如果目标是验证 unsafeCall 参数错误会抛异常，则删除 try/catch，让异常向外抛出，保留 @runtime-throws=Error。
方案 B：如果目标是验证 catch 后流程正常，则删除 @runtime-throws=Error，并在 catch 中设置标志位断言确实捕获到异常。
```

该用例不应作为 ArkTS 实现问题反馈。

## 5. 重点问题二：bigint 混合关系运算存在 spec 冲突

失败用例：

```text
3.14_Type_bigint/compile-fail/TYP_03_14_014_FAIL_BIGINT_GT_INT.ets
3.14_Type_bigint/compile-fail/TYP_03_14_016_FAIL_BIGINT_LT_DOUBLE.ets
```

当前 `issue_report.md` 将其定性为：

```text
bigint > int / bigint < double 应报 compile-time error，但实际编译通过。
```

但是 ArkTS spec 中存在冲突：

`spec/types.md` 的 `Type bigint` 章节说：

```text
Relational operators that use an operand of type bigint along with an operand of another type are illegal and produce a compile-time error.
```

而 `spec/expressions.md` 的 `Bigint Relational Operators` 章节又说：

```text
Relational operators can be applied to bigint values if:
- both operands are of bigint type; or
- one operand is of bigint type and other is of a numeric type.
```

并且该章节还给出了示例：

```ts
console.log(b < 3) // true, '2' is converted implicitly to bigint
```

结论：

```text
这不是单纯实现 bug，而是 spec 文档内部存在冲突。
当前实现更接近 expressions.md 的描述。
```

整改建议：

```text
1. issue_report.md 中 D-3.14-01 / D-3.14-02 不要直接写成“实现与 spec 不一致”。
2. 改为“spec/types.md 与 spec/expressions.md 对 bigint 混合关系运算描述冲突，需 spec 澄清”。
3. 这两个用例可以保留为 compile-fail 看护，但状态应标记为 spec-conflict / 待规范确认。
```

## 6. 重点问题三：TYP_03_06_02_028 issue 记录已过期

`issue_report.md` 中记录：

```text
TYP_03_06_02_028: 模块级 const 整数除零编译期不检测
Expected: compile-time error
Actual: 编译通过，运行时抛 ArithmeticError
```

但当前用例实际位置和预期是：

```text
3.6.2_Integer_Types_and_Operations/runtime/TYP_03_06_02_028_RUNTIME_INT_DIV_MODULE_CONST_ZERO.ets
@expect runtime
@runtime-throws=ArithmeticError
```

复测结果：

```text
PASS  TYP_03_06_02_028_RUNTIME_INT_DIV_MODULE_CONST_ZERO.ets  (threw ArithmeticError as expected)
```

结论：

```text
当前测试集已将该场景调整为 runtime throws 看护，issue_report.md 仍保留旧的 compile-time error 预期，记录已过期。
```

整改建议：

```text
1. 如果仍认为模块级 const 除零应该编译期报错，需要恢复/补充 compile-fail 用例，并引用明确 spec 依据。
2. 如果接受当前 runtime throws 行为，则从 issue_report.md 删除 TYP-U。
3. 至少需要让 issue_report.md 与当前用例分类保持一致。
```

## 7. 重点问题四：Function 类型相关失败项基本成立

失败用例：

```text
TYP_03_18_01_003_FAIL_FUNCTION_DIRECT_CALL.ets
TYP_03_18_014_FAIL_FUNCTION_DIRECT_CALL.ets
```

规范依据：

`spec/types.md` 的 `Function Types` 章节明确说明：

```text
A value of type Function cannot be called directly.
A developer must use the unsafeCall method instead.

f(1) // Compile-time error, cannot be called
```

复测结果：

```text
实际编译通过。
```

结论：

```text
该问题可以继续作为 spec 与实现不一致记录。
```

注意：

```text
TYP_03_18_01_005_RUNTIME_UNSAFE_CALL_ERROR 是测试设计问题，需从该问题组中单独剥离。
```

## 8. 重点问题五：函数类型 union 不加括号失败项基本成立

失败用例：

```text
TYP_03_18_012_FAIL_FUNCTION_TYPE_UNION_NO_PARENS.ets
```

规范依据：

`spec/types.md` 的 `Union Types` 章节明确说明：

```text
A compile-time error occurs if type is a function type not enclosed in parentheses.
```

示例：

```ts
type Invalid = string | () => string | number // Compile-time error
type Valid1 = string | (() => string) | number // OK
```

复测结果：

```text
实际编译通过。
```

结论：

```text
该问题可以继续作为 spec 与实现不一致记录。
```

## 9. 重点问题六：union common member 失败项基本成立

失败用例：

```text
TYP_03_19_008_FAIL_UNION_DIFF_FIELD_TYPE.ets
TYP_03_19_02_005_FAIL_DIFF_FIELD_TYPE.ets
```

规范依据：

`spec/types.md` 的 `Access to Common Union Members` 章节要求：

```text
common member 必须是 equal signature 的 method/accessor，或 same-type field。
field types differ 时应产生 compile-time error。
```

示例：

```ts
console.log(u.s) // Compile-time error, field types differ
```

复测结果：

```text
实际编译通过。
```

结论：

```text
该问题可以继续作为 spec 与实现不一致记录。
```

修正建议：

```text
issue_report.md 表格中 D-3.19-02 写的是 TYP_03_19_02_002_FAIL_DIFF_FIELD_TYPE，
但本次实际失败是 TYP_03_19_02_005_FAIL_DIFF_FIELD_TYPE。
需要核对并修正 case ID。
```

## 10. 重点问题七：keyof 非 class/interface 失败项基本成立

失败用例：

```text
TYP_03_19_03_007_FAIL_KEYOF_NON_CLASS.ets
```

规范依据：

`spec/types.md` 的 `Keyof Types` 章节说明：

```text
A compile-time error occurs if typeReference is neither a class nor an interface type.
```

复测结果：

```text
实际编译通过。
```

结论：

```text
该问题可以继续作为 spec 与实现不一致记录。
```

## 11. 重点问题八：readonly union 归一化写入失败项基本成立

失败用例：

```text
TYP_03_19_01_012_FAIL_READONLY_WRITE.ets
```

规范依据：

`spec/types.md` 的 union normalization 章节说明：

```text
(number[]) | (readonly number[]) normalized as readonly number[].
Readonly version wins.
```

同时 readonly array 章节说明 readonly array elements cannot be modified。

复测结果：

```text
实际编译通过。
```

结论：

```text
该问题可以继续作为 spec 与实现不一致记录。
```

## 12. 重点问题九：Utility Types 非 class/interface 失败项基本成立

失败用例：

```text
TYP_03_21_03_006_FAIL_PARTIAL_NON_CLASS.ets
TYP_03_21_04_006_FAIL_REQUIRED_NON_CLASS.ets
TYP_03_21_05_004_FAIL_NON_CLASS.ets
```

规范依据：

`spec/types.md` 明确说明：

```text
Partial<T>: T must be a class or an interface type. Otherwise, compile-time error.
Required<T>: T must be a class or an interface type. Otherwise, compile-time error.
Readonly<T>: T must be a class or an interface type. Otherwise, compile-time error.
```

复测结果：

```text
Partial<int> / Required<int> / Readonly<int> 实际编译通过。
```

结论：

```text
该问题可以继续作为 spec 与实现不一致记录。
```

## 13. 重点问题十：Any 字段访问失败项基本成立

失败用例：

```text
TYP_03_08_007_FAIL_ANY_FIELD_ACCESS.ets
```

依据 `arkts-static-spec` 技能约束和 `spec/types.md`：

```text
ArkTS Any 是预定义 nullish 类型，是所有类型的超类型，但无方法、无字段。
```

复测结果：

```text
实际编译通过。
```

结论：

```text
该问题可以继续作为 spec 与实现不一致记录。
```

## 14. 脚本与报告问题

### 14.1 run_types_cases_wsl.sh 默认只跑 3.1

脚本中：

```bash
SECTIONS="${SECTIONS:-3.1_Predefined_Types}"
```

如果不显式设置 `SECTIONS`，只会运行 3.1，不会全量运行 03 章节。

建议：

```text
1. README 或脚本注释中明确说明全量运行方式。
2. 或将默认值改为 test_manifest.json 中全部章节。
```

### 14.2 issue_report.md 需同步当前复测结果

需要修正：

```text
1. 删除或重写 TYP-U / TYP_03_06_02_028 的旧记录。
2. 将 D-3.14-01 / D-3.14-02 改为 spec-conflict，不直接定性实现 bug。
3. 增补 TYP_03_18_01_005 是测试用例设计问题，不列入实现 issue。
4. 修正 D-3.19-02 的实际 case ID。
```

### 14.3 跨语言对比材料需谨慎使用

多处报告将 Java/Swift 行为作为对比，但 ArkTS 预期必须以 ArkTS static spec 为准。Java/Swift 只能作为语言设计差异参考，不应直接作为 ArkTS bug 定性依据。

## 15. 给测试人员的整改清单

建议按以下顺序整改：

1. 修正 `TYP_03_18_01_005_RUNTIME_UNSAFE_CALL_ERROR.ets`，使 `@runtime-throws=Error` 与代码行为一致。
2. 更新 `issue_report.md`，删除或重写 `TYP-U / TYP_03_06_02_028` 旧记录。
3. 将 bigint 混合关系运算问题从“实现 bug”改为“spec 文档冲突，待规范澄清”。
4. 修正 `D-3.19-02` 的 case ID，实际失败为 `TYP_03_19_02_005_FAIL_DIFF_FIELD_TYPE.ets`。
5. 保留 Function 直接调用、function type union 未加括号、union common member、keyof 非 class/interface、readonly union 写入、utility type 非 class/interface、Any 字段访问等负向看护用例。
6. 明确全量运行脚本用法，避免只跑默认 3.1 后误判全量通过。
7. 对跨语言报告统一补充说明：Java/Swift 仅作对照，ArkTS 预期以 spec 为准。

## 16. 可直接反馈给测试人员的摘要

```text
本次 AI review 对 03_Types 全量 728 条 ArkTS 用例进行了 WSL 复测，结果为 714 pass / 14 fail。

14 个失败项中，大部分是已有的 spec 与实现不一致看护用例，建议保留；但有几处需要整改：

1. TYP_03_18_01_005_RUNTIME_UNSAFE_CALL_ERROR 是用例自身设计问题：注释要求 @runtime-throws=Error，但代码内部 try/catch 捕获了异常，导致脚本期望与代码行为矛盾。
2. issue_report.md 中 TYP_03_06_02_028 记录已过期，当前该用例已经作为 runtime throws 用例并复测通过。
3. bigint > int / bigint < double 不应直接定性为实现 bug，因为 spec/types.md 与 spec/expressions.md 对 bigint 混合关系运算描述冲突，需要先反馈规范澄清。
4. issue_report.md 中 D-3.19-02 的 case ID 与实际失败用例不一致，实际失败是 TYP_03_19_02_005_FAIL_DIFF_FIELD_TYPE.ets。
5. run_types_cases_wsl.sh 默认只运行 3.1，若要全量复测必须显式传入全部 SECTIONS，建议更新脚本或文档说明。

其余失败项，如 Function 类型直接调用、函数类型 union 未加括号、union common member 同名字段不同类型、keyof 非 class/interface、readonly union 写入、Partial/Required/Readonly 非 class/interface、Any 字段访问，均有明确 spec 依据，可继续作为负向看护或实现问题跟踪。
```
