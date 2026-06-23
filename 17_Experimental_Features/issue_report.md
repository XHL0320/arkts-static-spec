# 17 Experimental Features Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| D-17.2-01 | EXP2_17_02_023_RUNTIME_OUT_OF_BOUNDS | 编译器编译期拒绝负索引常量 | runtime error | compile-time error ESE0247 | D类-Spec不一致 |
| D-17.2-02 | EXP2_17_02_024_RUNTIME_LENGTH_IMMUTABLE | 编译器编译期拒绝 length 赋值 | runtime immutable | compile-time error ESE0024 | D类-Spec不一致 |
| C-17.9.1-01 | EXP2_FuncOverload_Empty_fail | 空 overload {} 编译通过 | compile-time error (no matching func) | 编译通过 | C类-编译器未实现 |
| C-17.9.5-01 | EXP2_Constructor_Overload | 空 constructor overload 列表编译通过 | compile-time error | 编译通过 | C类-编译器未实现 |
| C-17.9.5-02 | EXP2_Constructor_Overload | 多个 `overload constructor` 声明编译通过 | compile-time error (仅允许一个) | 编译通过 | C类-编译器未实现 |
| C-17.9.2-01 | EXP2_MethodOverload_MultiOverload_pass | As cast deprecated 导致 compile-pass 失败 | compile-pass | compile error ESE123811 | 待确认 |
| C-17.9.2-02 | EXP2_MethodOverload_SpecialNames_pass | Box 类名与 stdlib 冲突 | compile-pass | compile error ESE0349 | 待修复用例 |
| D-17.4-01 | EXP2_17_04_022_RUNTIME_NEGATIVE_DIM | 运行时负维度抛异常验证 | NegativeArraySizeError | 待验证 | 待确认 |
| D-17.1.1-01 | EXP2_17_01_01_009_FAIL_INVALID_ESCAPE | c'\q' 非法转义序列编译通过 | compile-fail | compiles OK | D类-Spec不一致 |
| D-17.5-01 | EXP2_17_05 系列 | Indexable $_get/$_set 索引参数 spec 说 "string or number"，实现要求 int | string 或 number | 仅接受 int | D类-Spec不一致 |
| D-17.14-01 | EXP2_17_14_010_FAIL_OPTIONAL_BEFORE_TRAILING | 可选参数在函数类型参数前，spec 允许但编译器拒绝 | compile-pass | ESY0219: Required parameter cannot follow optional | D类-Spec不一致 |
| D-17.16-01 | EXP2_17_16_012_FAIL_INSTANCEOF_MISMATCH | instanceof 不兼容类型检查仅 W1001506 警告，不产生编译错误 | compile-fail | compile-pass (仅Warning) | D类-Spec不一致 |
| C-17.16.1-01 | EXP2 嵌套解构 | 嵌套解构 `let [[a,b],[c,d]] = arr` 导致 es2panda segfault 崩溃 | compile-pass 或 compile-fail | 编译器崩溃 (core dumped) | C类-编译器Bug |
| C-17.16.1-02 | EXP2 解构类型检查 | 解构时 RHS 类型与 LHS 标注类型不匹配未检测 | compile-fail (类型错误) | compile-pass | C类-编译器未实现 |
| D-17.11.3-01 | EXP2_17_11_03 系列 | `new Class.ConstructorName()` 调用语法不支持 | 语法合法 | ESE0070: type does not exist | D类-Spec不一致 |
| D-17.11.3-02 | EXP2_17_11_03 系列 | 全命名构造器时 `new X()` 编译通过 | compile-fail | 编译通过 | D类-Spec不一致 |
| D-17.11.3-03 | EXP2_17_11_03 系列 | 重复命名构造器仅 W2323 警告不拒绝 | compile-fail | 编译通过 (仅Warning) | D类-Spec不一致 |
| D-17.13.2-01 | EXP2_17_13_2_007/008 | int/string 作为 receiver type 编译通过 | compile-fail (仅限 class/interface/array) | 编译通过 | D类-Spec不一致 |
| D-17.13.4-01 | EXP2_17_13_4 系列 | Lambda 变量的 method-call 语法 (`r.lambda()`) 不支持 | 语法合法 | ESE0087: Property does not exist | D类-Spec不一致 |
| D-17.13.5-01 | EXP2_17_13_5 系列 | Lambda body 中隐式 this（省略 this. 前缀）不支持 | 语法合法 | ESE0143: Unresolved reference | D类-Spec不一致 |

### 异常详情

**D-17.2-01** ⭐⭐ MEDIUM — 编译器编译期拒绝负索引常量

- Spec §17.2 规定数组越界访问为运行时错误，但编译器 ESE0247 在编译期即拒绝负索引常量 `a[-1]`。
- 实际：`let x: int = a[-1]` 编译失败 (ESE0247: Index value cannot be less than zero)
- 分析：编译期检查比运行时检查更安全，但 spec 措辞未涵盖此行为。建议更新 spec 明确编译期负索引常量检查。
- 分类：D 类（Spec 与实现不一致 / 实现比 Spec 更严格）

**D-17.2-02** ⭐ LOW — 编译器编译期拒绝 length 赋值

- Spec §17.2 描述 length "set once at runtime and cannot be changed later"，但编译器 ESE0024 在编译期即拒绝 `a.length = 5`。
- 实际：`a.length = 5` 编译失败 (ESE0024: Setting the length of an array is not permitted)
- 分析：编译期检查是正确的防御性策略。建议确认并更新 spec。
- 分类：D 类（Spec 与实现不一致 / 实现比 Spec 更严格）

**C-17.9.1-01** ⭐⭐ MEDIUM — 空 overload {} 编译通过

- Spec §17.9.1 要求 overload 列表中所有 identifier 必须引用可访问函数，但空列表 `overload empty {}` 情况未明确。
- 实际：`overload empty {}` 编译通过（应报 compile-time error）
- 复现用例：EXP2_FuncOverload_Empty_fail
- 建议：es2panda 检查空 overload 列表并拒绝。
- 分类：C 类（编译器未实现检查）

**D-17.1.1-01** ⭐ LOW — c'\q' 非法转义序列编译通过

- **问题描述：** Spec §17.1.1 要求 char 字面量中 X 必须是有效的 UTF-16 符号或转义序列。`\q` 不是标准转义序列，应产生编译时错误，但当前编译器允许 `c'\q'` 编译通过。
- **复现用例 ID：** EXP2_17_01_01_009_FAIL_INVALID_ESCAPE
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `c'\q'` | ⚠️ 编译通过（与 spec 不一致） |
| Java | `'\q'` | ❌ 编译错误：illegal escape character |
| Swift | N/A | N/A |

- **建议：** es2panda 编译器应检查并拒绝未定义的转义序列。
- **分类：** D 类（Spec 与实现不一致）

**D-17.14-01** ⭐ LOW — 可选参数在函数类型参数前编译器拒绝（ESY0219），但 spec 17.14 允许

- **问题描述：** Spec §17.14 规定 "Optional params before function type param → skipped args default to undefined"，即允许可选参数在函数类型（trailing lambda）参数之前。但 ArkTS 编译器禁止必选参数出现在可选参数之后（ESY0219: A required parameter cannot follow an optional parameter），与 spec 规定冲突。
- **复现用例 ID：** EXP2_17_14_010_FAIL_OPTIONAL_BEFORE_TRAILING
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `function f(x: string, y?: string, cb: () => void)` | ❌ ESY0219 编译错误 |
| Java | N/A（无可选参数概念） | N/A |
| Swift | `func f(x: String, y: String? = nil, cb: () -> Void)` | ❌ 编译错误（参数顺序规则） |

- **建议：** 此问题与 3.18 函数类型章节的相同限制有关联。需统一决策：要么修改编译器支持可选参数在函数类型参数前，要么更新 spec 17.14 移除相关说明。建议在 3.18 和 17.14 两处同步修正。
- **分类：** D 类（Spec 与实现不一致）

**D-17.5-01** ⭐⭐ MEDIUM — Indexable 索引参数类型 spec/实现不一致

- Spec §17.5 说 "Type string can be used as a type of the index parameter"，示例使用 `number`。
- 实际：es2panda 要求索引参数为 `int` 类型。使用 `number`/`double` 产生 ESE0046。
- 建议：明确 spec 中索引参数可接受的类型，或扩展编译器实现。
- 分类：D 类（Spec 与实现不一致）

**D-17.16-01** ⭐⭐ MEDIUM — instanceof 不兼容类型检查仅警告不拒绝

- **问题描述：** Spec §17.16 描述模式匹配应对类型安全性进行检查。但 ArkTS 对不兼容类型的 instanceof 检查（如 `Object instanceof int`）仅产生 W1001506 编译期警告，不产生编译错误。
- **复现用例 ID：** EXP2_17_16_012_FAIL_INSTANCEOF_MISMATCH
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `(42 as Object) instanceof String` | ⚠️ W1001506 警告，编译通过 |
| Java | `((Object)42) instanceof String` | ❌ java: incompatible types |
| Swift | `42 as Any is String` | ❌ 编译错误 |

- **建议：** 将编译期可确定结果的 instanceof 检查从 Warning 提升为 Error，至少对原始类型（int/double/char 等）的 instanceof 检查产生编译错误。
- **分类：** D 类（Spec 与实现不一致）

**C-17.16.1-01** ⭐⭐⭐ CRITICAL — 嵌套解构导致 es2panda 编译器崩溃

- **问题描述：** 当编写嵌套数组解构 `let [[a, b], [c, d]] = arr` 时，es2panda 编译器发生 segfault 崩溃（core dumped）。回溯显示崩溃发生在 `VariableDeclaration::Iterate` 和 `UnboxPhase::PerformForProgram` 阶段。
- **复现用例：**

```typescript
function main(): void {
  let arr: int[][] = [[1, 2], [3, 4]]
  let [[a, b], [c, d]] = arr
}
```

- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let [[a,b],[c,d]] = arr` | ❌ 编译器崩溃 segfault |
| Java | 无解构语法 | N/A |
| Swift | `let ((a,b),(c,d)) = ((1,2),(3,4))` | ✅ 正常编译运行 |
| TypeScript | `let [[a,b],[c,d]] = arr` | ✅ 正常编译运行 |

- **建议：** 上报 es2panda Bug，修复嵌套解构 AST 处理逻辑。回溯显示崩溃在 `compiler::UnboxPhase::PerformForProgram` 和 `ir::VariableDeclaration::Iterate`。
- **分类：** C 类（编译器实现 Bug）

**C-17.16.1-02** ⭐⭐ MEDIUM — 解构 RHS 类型与 LHS 标注类型不匹配未检测

- **问题描述：** 解构时如果 LHS 有显式类型标注而 RHS 类型不匹配，编译器未检测。例如 `let [x, y]: [int, int] = stringArr` 编译通过。
- **复现用例：**

```typescript
function main(): void {
  let arr: string[] = ["a", "b"]
  let [x, y]: [int, int] = arr   // 应报错：string[] 不能赋值给 [int, int]
}
```

- **建议：** 加强解构声明的类型检查，确保 RHS 类型与 LHS 标注类型兼容。
- **分类：** C 类（编译器未实现检查）

**D-17.11.3-01** ⭐⭐⭐ CRITICAL — `new Class.ConstructorName()` 调用语法不被支持

- Spec §17.11.3 定义命名构造器通过 `new Class.Name(args)` 调用，如 `new Temperature.Celsius(0)`。
- 实际：编译器将 `Temperature.Celsius` 解释为类型引用，产生 ESE0070 "'Celsius' type does not exist"。
- 复现用例：EXP2_17_11_03_001_PASS_NAMED_CTOR
- 建议：es2panda 语法解析器支持 `new Class.ConstructorName()` 形式的构造器调用。
- 分类：D 类（Spec 与实现不一致 / 编译器未实现该语法）

**D-17.11.3-02** ⭐⭐ MEDIUM — 全命名构造器时 `new X()` 编译通过

- Spec §17.11.3 明确：当所有构造器都有名称时，`new X(1)` 应为 compile-time error。
- 实际：全命名构造器类仍可通过 `new X()` 编译。
- 建议：编译器检查类的构造器列表，当全部为命名构造器时拒绝无名称的 new 表达式。
- 分类：D 类（Spec 与实现不一致）

**D-17.11.3-03** ⭐ LOW — 重复命名构造器仅 W2323 警告

- Spec §17.11.3 明确：同名命名构造器应产生 compile-time error（禁止隐式重载）。
- 实际：重复命名构造器仅产生 W2323 警告，编译通过。
- 建议：将重复命名构造器从 Warning 级别提升为 Error。
- 分类：D 类（Spec 与实现不一致）
