# 17 Experimental Features Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

> 最后编译验证：2026-06-25，es2panda `--extension=ets`（Linux native），533 个用例全量实测。
>
> **实测统计**：compile-pass 237/238（1 异常失败）；compile-fail 151/161 按预期失败（10 异常通过）；runtime 129/134 编译通过（5 编译失败）。**异常合计 16 项**。
>
> 注：§17 为实验特性章节，部分"编译器不支持"属实验特性未实现（语言差异点），非编译器 bug。下表区分 **C 类**（编译器未实现 spec 检查 / 崩溃）与 **D 类**（spec 与实现不一致）。无法立即定性的标 **待确认**（不强写结论）。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| C-17.4-02 | EXP2_17_04_007_PASS_FUNCTION_TYPE_ARRAY / EXP2_17_04_023_RUNTIME_FUNCTION_TYPE_ARRAY | 函数类型数组声明编译失败 | compile-pass / runtime | compile error ESE0127 (EXIT=1) | 待确认 |
| D-17.2-01 | EXP2_17_02_023_RUNTIME_FIXED_ARRAY_OUT_OF_BOUNDS / EXP2_17_02_01_022 / EXP2_17_03_023 | 负索引常量编译期即拒绝 | runtime error | compile-time error ESE0247 (EXIT=1) | D类-Spec不一致 |
| D-17.2-02 | EXP2_17_02_024_RUNTIME_FIXED_ARRAY_LENGTH_IMMUTABLE | length 赋值编译期即拒绝 | runtime immutable | compile-time error ESE0024 (EXIT=1) | D类-Spec不一致 |
| D-17.1.1-01 | EXP2_17_01_01_009_FAIL_INVALID_ESCAPE | `c'\q'` 非法转义序列编译通过 | compile-fail | 编译通过 (EXIT=0) | D类-Spec不一致 |
| D-17.13.2-01 | EXP2_17_13_2_007_FAIL_PRIMITIVE_INT_RECEIVER / EXP2_17_13_2_008 | int/string 作为 receiver type 编译通过 | compile-fail | 编译通过 (EXIT=0) | D类-Spec不一致 |
| D-17.13.3-01 | EXP2_17_13_3_009_FAIL_WRONG_PARAM_COUNT | receiver 函数参数数量错误未检查 | compile-fail | 编译通过 (EXIT=0) | 待确认 |
| D-17.13.4-02 | EXP2_17_13_4_007_FAIL_LAMBDA_PRIMITIVE_RECEIVER | primitive type receiver lambda 未检查 | compile-fail | 编译通过 (EXIT=0) | 待确认 |
| D-17.2.1-01 | EXP2_17_02_01_012_FAIL_WRONG_ARG_COUNT | ValueArray 创建参数数量错误未检查 | compile-fail | 编译通过 (EXIT=0) | 待确认 |
| D-17.4-03 | EXP2_17_04_012_FAIL_TYPE_PARAMETER_ELEMENT_TYPE | 类型参数元素类型未检查 | compile-fail | 编译通过 (EXIT=0) | 待确认 |
| D-17.16-01 | EXP2_17_16_012_FAIL_INSTANCEOF_MISMATCH | instanceof 不兼容类型仅 W1001506 警告 | compile-fail | 编译通过 (仅Warning) | D类-Spec不一致 |
| C-17.9.1-01 | EXP2_17_09_1_009_FAIL_FUNCOVERLOAD_EMPTY | 空 overload `{}` 编译通过 | compile-time error | 编译通过 (EXIT=0) | C类-编译器未实现 |
| C-17.9.5-01 | EXP2_17_09_5_008_FAIL_CTOROVERLOAD_EMPTYLIST | 空 constructor overload 列表编译通过 | compile-time error | 编译通过 (EXIT=0) | C类-编译器未实现 |
| C-17.9.5-02 | EXP2_17_09_5_010_FAIL_CTOROVERLOAD_TWODECLARATIONS | 多个 `overload constructor` 声明编译通过 | compile-time error | 编译通过 (EXIT=0) | C类-编译器未实现 |
| C-17.16.1-01 | EXP2 嵌套解构系列 | 嵌套解构 `let [[a,b],[c,d]] = arr` 导致 es2panda segfault | compile-pass/fail | 编译器崩溃 (core dumped) | C类-编译器Bug |
| C-17.16.1-02 | EXP2 解构类型检查系列 | 解构 RHS 与 LHS 标注类型不匹配未检测 | compile-fail | 编译通过 | C类-编译器未实现 |
| D-17.5-01 | EXP2_17_05 系列 | Indexable `$_get/$_set` 索引参数 spec 说 string/number，实现要求 int | string 或 number | 仅接受 int (ESE0046) | D类-Spec不一致 |
| D-17.11.3-01 | EXP2_17_11_03 系列 | `new Class.ConstructorName()` 调用语法不支持 | 语法合法 | ESE0070: type does not exist | D类-实验特性未实现 |
| D-17.11.3-02 | EXP2_17_11_03 系列 | 全命名构造器时 `new X()` 编译通过 | compile-fail | 编译通过 | D类-Spec不一致 |
| D-17.11.3-03 | EXP2_17_11_03 系列 | 重复命名构造器仅 W2323 警告不拒绝 | compile-fail | 编译通过 (仅Warning) | D类-Spec不一致 |
| D-17.13.4-01 | EXP2_17_13_4 系列 | Lambda 变量的 method-call 语法 (`r.lambda()`) 不支持 | 语法合法 | ESE0087: Property does not exist | D类-实验特性未实现 |
| D-17.13.5-01 | EXP2_17_13_5 系列 | Lambda body 中隐式 this（省略 `this.` 前缀）不支持 | 语法合法 | ESE0143: Unresolved reference | D类-实验特性未实现 |
| D-17.14-01 | EXP2_17_14_010_FAIL_OPTIONAL_BEFORE_TRAILING | 可选参数在函数类型参数前，spec 允许但编译器拒绝 | compile-pass | ESY0219: Required parameter cannot follow optional | D类-Spec不一致 |

### 异常详情

**C-17.4-02** ⭐⭐ MEDIUM — 函数类型数组声明编译失败（ESE0127）

- 复现：`EXP2_17_04_007_PASS_FUNCTION_TYPE_ARRAY`（compile-pass 用例）与 `EXP2_17_04_023_RUNTIME_FUNCTION_TYPE_ARRAY`（runtime 用例）均编译失败，报 `Semantic error ESE0127`。
- 实测 (2026-06-25)：EXIT=1。
- 待确认：函数类型数组（如 `(() => void)[]`）是否为 spec §17.4 合法语法，抑或当前编译器限制。需核对 spec 后定类。

**D-17.2-01** ⭐⭐ MEDIUM — 负索引常量编译期即拒绝（ESE0247）

- Spec §17.2 规定数组越界为运行时错误，但编译器对负索引常量 `a[-1]` 在编译期即拒绝 (ESE0247: Index value cannot be less than zero)。
- 影响用例：`EXP2_17_02_023_RUNTIME_FIXED_ARRAY_OUT_OF_BOUNDS`、`EXP2_17_02_01_022_RUNTIME_OUT_OF_BOUNDS`、`EXP2_17_03_023_RUNTIME_OUT_OF_BOUNDS`（均为 runtime 用例，本应运行时抛错，却被编译期拒绝，EXIT=1）。
- 分析：编译期检查比运行时更安全，但 spec 措辞未涵盖。建议更新 spec 明确编译期负索引常量检查。
- 分类：D 类（实现比 Spec 更严格）

**D-17.2-02** ⭐ LOW — length 赋值编译期即拒绝（ESE0024）

- Spec §17.2 描述 length "set once at runtime and cannot be changed later"，但编译器编译期即拒绝 `a.length = 5` (ESE0024)。
- 复现：`EXP2_17_02_024_RUNTIME_FIXED_ARRAY_LENGTH_IMMUTABLE`（runtime 用例编译失败，EXIT=1）。
- 分类：D 类（实现比 Spec 更严格）

**D-17.1.1-01** ⭐ LOW — `c'\q'` 非法转义序列编译通过

- Spec §17.1.1 要求 char 字面量中转义序列必须有效；`\q` 非标准转义，应 compile-time error，但编译器允许通过 (EXIT=0)。
- 跨语言：Java `'\q'` → illegal escape character 编译错误。
- 复现：`EXP2_17_01_01_009_FAIL_INVALID_ESCAPE`。
- 分类：D 类（Spec 与实现不一致）

**D-17.13.2-01** ⭐⭐ MEDIUM — int/string 作为 receiver type 编译通过

- Spec §17.13.2 限制 receiver type 为 class/interface/array，int/string 作 receiver 应 compile-fail，但编译通过 (EXIT=0)。
- 复现：`EXP2_17_13_2_007_FAIL_PRIMITIVE_INT_RECEIVER`、`EXP2_17_13_2_008_FAIL_PRIMITIVE_STRING_RECEIVER`。
- 分类：D 类（Spec 与实现不一致）

**D-17.16-01** ⭐⭐ MEDIUM — instanceof 不兼容类型仅警告不拒绝

- 对不兼容类型 instanceof（如 `Object instanceof int`）仅 W1001506 警告，不产生编译错误 (EXIT=0)。
- 跨语言：Java/Swift 均编译错误。
- 复现：`EXP2_17_16_012_FAIL_INSTANCEOF_MISMATCH`。
- 分类：D 类（Spec 与实现不一致）

**C-17.9.1-01 / C-17.9.5-01/02** ⭐⭐ MEDIUM — 空 overload 列表 / 多 overload constructor 编译通过

- `overload empty {}`（C-17.9.1-01）、空 constructor overload 列表（C-17.9.5-01）、多个 `overload constructor`（C-17.9.5-02）均编译通过 (EXIT=0)，spec 要求 compile-time error。
- 分类：C 类（编译器未实现检查）

**C-17.16.1-01** ⭐⭐⭐ HIGH — 嵌套解构导致 es2panda 崩溃

- 嵌套数组解构 `let [[a, b], [c, d]] = arr` 触发 es2panda segfault（core dumped），回溯在 `VariableDeclaration::Iterate` / `UnboxPhase::PerformForProgram`。
- 跨语言：Swift/TypeScript 正常编译运行。
- 分类：C 类（编译器 Bug）

**C-17.16.1-02** ⭐⭐ MEDIUM — 解构 RHS/LHS 类型不匹配未检测

- `let [x, y]: [int, int] = stringArr` 编译通过，未检测类型不匹配。
- 分类：C 类（编译器未实现检查）

**D-17.5-01** ⭐⭐ MEDIUM — Indexable 索引参数类型 spec/实现不一致

- Spec §17.5 说索引参数可为 string/number，实现要求 int（用 number/double 报 ESE0046）。
- 分类：D 类（Spec 与实现不一致）

**D-17.11.3-01/02/03** — 命名构造器实验特性

- §17.11.3 命名构造器：`new Class.Name()` 语法不支持（ESE0070，D-17.11.3-01，实验特性未实现）；全命名构造器时 `new X()` 应 fail 但通过（D-17.11.3-02）；重复命名构造器仅 W2323 警告（D-17.11.3-03）。
- 跨语言：Java/Swift 无等价语法；Dart 有 named constructor。
- 分类：D 类（实验特性差异）

**D-17.13.4-01 / D-17.13.5-01** — Receiver lambda 实验特性

- §17.13.4 Lambda 变量 method-call 语法 `r.lambda()` 不支持（ESE0087）；§17.13.5 Lambda body 隐式 this 不支持（ESE0143）。
- 分类：D 类（实验特性未实现）

**D-17.14-01** ⭐ LOW — 可选参数在 trailing lambda 参数前

- Spec §17.14 允许可选参数在函数类型参数前，编译器拒绝 (ESY0219)。
- 分类：D 类（Spec 与实现不一致）

---

## 待确认项（需进一步核对 spec 后定性）

以下 4 项 compile-fail 用例实际编译通过 (EXIT=0)，初步判断为编译器未实现相关检查，但需核对 §17 对应章节后确定是 C 类（编译器未实现）还是 D 类（spec 实际允许）：

- **D-17.13.3-01** `EXP2_17_13_3_009_FAIL_WRONG_PARAM_COUNT`：receiver 函数参数数量错误
- **D-17.13.4-02** `EXP2_17_13_4_007_FAIL_LAMBDA_PRIMITIVE_RECEIVER`：primitive type receiver lambda
- **D-17.2.1-01** `EXP2_17_02_01_012_FAIL_WRONG_ARG_COUNT`：ValueArray 创建参数数量
- **D-17.4-03** `EXP2_17_04_012_FAIL_TYPE_PARAMETER_ELEMENT_TYPE`：类型参数元素类型

## 已解决（已移除）

- ~~C-17.9.2-01/02~~（MethodOverload_MultiOverload / SpecialNames）：2026-06-25 复测已编译通过，从本报告移除（tips 规则21）。
