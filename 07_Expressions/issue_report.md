# 07 Expressions Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|----|------|---------|----------|--------|--------|
| 7.1.1-001 | EXP_07_01_01_021_FAIL_ASSIGN_TO_NON_LVALUE | 赋值给非左值编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.1.1-002 | EXP_07_01_01_023_FAIL_LOGICAL_AND_ASSIGNMENT | 逻辑与后赋值给非左值编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.1.1-003 | EXP_07_01_01_024_FAIL_TERNARY_PRECEDENCE_TYPE | int 作为三元条件编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.2.2-001 | EXP_07_02_02_017_FAIL_NEGATIVE_ARRAY_INDEX | 字面量负数组索引编译时错误 | runtime-RangeError | compile-fail | D 类: Spec 与实现不一致 |
| 7.11.4-001 | EXP_07_11_04_007_FAIL_STATIC_VOID_ASSIGNED | void 静态方法结果赋值给变量编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.11.4-002 | EXP_07_11_04_008_FAIL_INSTANCE_VOID_ASSIGNED | void 实例方法结果赋值给变量编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.13.3-001 | EXP_07_13_03_003_PASS_CASE1_FIELD_ACCESS | Record 字段访问符号 x.key2 编译器不支持（spec 说等价于 x['key2']）| compile-pass | compile-fail | D 类: Spec 与实现不一致 |
| 7.13.3-002 | EXP_07_13_03_010_FAIL_CASE1_VARIABLE_INDEX | Case1 变量索引应报编译错但编译器允许通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.21.7-001 | EXP_07_21_07_025_FAIL_ENUM | ~enum 应报编译时错误但编译器允许通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.21.8-001 | EXP_07_21_08_021_FAIL_INT | !int 应报编译时错误但编译器允许通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.21.8-002 | EXP_07_21_08_022_FAIL_STRING | !string 应报编译时错误但编译器允许通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.21.8-003 | EXP_07_21_08_023_FAIL_OBJECT | !Object 应报编译时错误但编译器允许通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.21.8-004 | EXP_07_21_08_024_FAIL_NULL | !null 应报编译时错误但编译器允许通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.21.8-005 | EXP_07_21_08_025_FAIL_ENUM | !enum 应报编译时错误但编译器允许通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.23.2-001 | EXP_07_23_02_027_FAIL_DIVISION_BY_ZERO_LITERAL | int 字面量除零编译检测缺失 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.23.3-001 | EXP_07_23_03_027_FAIL_REMAINDER_BY_ZERO_LITERAL | int 字面量取余除零编译检测缺失 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.23.3-002 | EXP_07_23_03_028_FAIL_BIGINT_REMAINDER_BY_ZERO_LITERAL | bigint 字面量 0n 取余除零编译检测缺失 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.24-001 | EXP_07_24_033 中负数基底零指数 | (-5.0)**0.0 返回 NaN（应为 1.0） | 1.0 | NaN | D 类: Spec 与实现不一致 |
| 7.24-002 | EXP_07_24_041 中负数基底整数指数 | (-2.0)**3.0 返回 NaN（应为 -8.0） | -8.0 | NaN | D 类: Spec 与实现不一致 |
| 7.26-001 | EXP_07_26_010_FAIL_DOUBLE_SHIFT | float/double 移位操作数 spec §7.26 规定截断后应编译通过，es2panda 报 ESE0318 拒绝 | compile-pass | compile-fail (ESE0318) | D 类: Spec 与实现不一致 |
| 7.27.6-001 | EXP_07_27_06_012_FAIL_ENUM_VS_NUMERIC | enum 与 numeric 关系运算应报错（spec §7.27.6 须同枚举类型）但编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.27.6-002 | EXP_07_27_06_013_FAIL_ENUM_VS_STRING | enum 与 string 关系运算应报错（spec §7.27.6 须同枚举类型）但编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.28-001 | EXP_07_28_3_FAIL_INT_BIGINT_MIX | int == bigint 应报错（spec §7.28 类型不匹配）但编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.28-002 | EXP_07_28_5_FAIL_OBJECT_INT_EQ | Object == int 应报错（spec §7.28 非合法相等组合）但编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.28-003 | EXP_07_28_6_FAIL_NULL_STRING_EQ | null == string 应报错（spec §7.28 非合法相等组合）但编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.28-004 | EXP_07_28_7_FAIL_UNDEFINED_INT_EQ | undefined == int 应报错（spec §7.28 非合法相等组合）但编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.28-005 | EXP_07_28_8_FAIL_ARRAY_STRING_EQ | 数组 == string 应报错（spec §7.28 非合法相等组合）但编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.28.1-001 | EXP_07_28_01_015_FAIL_OBJECT_VS_NUMERIC | Object == int 编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.28.1-002 | EXP_07_28_01_016_FAIL_ENUM_VS_NUMERIC | enum == int 编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.28.1-003 | EXP_07_28_01_017_FAIL_NULLISH_WITH_NUMERIC | null == int 编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.32.1-001 | EXP_07_32_01_008_FAIL_READONLY_ARRAY | readonly array = non-readonly array 编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.32.1-002 | EXP_07_32_01_009_FAIL_READONLY_TUPLE | readonly tuple = non-readonly tuple 编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.32.2-001 | EXP_07_32_02_005/008/011 | ??= 空值合并赋值编译器报 Syntax error ESY0227 | 应编译通过或语义检查 | compile-fail（语法错误）| D 类: Spec 与实现不一致 |
| 7.35.2-001 | EXP_07_35_02_009_FAIL_UNINIT_LOCAL_CAPTURE | 未初始化局部变量在 lambda 中捕获编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.19-001 | EXP_07_19_021_FAIL_VOID_EXPRESSION | void 表达式应用 ! 运算符编译通过（预期 compile-fail） | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.19-002 | EXP_07_19_022_FAIL_ALWAYS_NULLISH_ASSIGN | undefined! 赋值给 int 类型编译通过（预期 compile-fail） | compile-fail | compile-pass | D 类: Spec 与实现不一致 |

### 异常详情

**7.1.1-001** ⭐⭐ — 加法优先级高于赋值导致非左值赋值编译通过
- **复现用例 ID：** EXP_07_01_01_021_FAIL_ASSIGN_TO_NON_LVALUE
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `a + b = c` | ✅ 编译通过 |
| Java | `a + b = c` | ❌ 编译错误: unexpected type |
| Swift | `a + b = c` | ❌ 编译错误: cannot assign to expression |

- **建议：** 按照 spec 要求，对赋值给非左值的情况报编译时错误。

---

**7.1.1-002** ⭐⭐ — 逻辑与后赋值给非左值编译通过

- **问题描述：** `a && b = c` 中 `&&` 优先级高于 `=`，应解析为 `(a && b) = c` 报赋值给非左值错误，但 ArkTS 编译器允许通过。
- **复现用例 ID：** EXP_07_01_01_023_FAIL_LOGICAL_AND_ASSIGNMENT
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `a && b = c` | ✅ 编译通过 |
| Java | `a && b = c` | ❌ 编译错误 |

- **建议：** 同 7.1.1-001，需要统一处理赋值给非左值的校验。

---

**7.1.1-003** ⭐ — 非 boolean 类型作为三元条件编译通过

- **问题描述：** `x ?? 0 ? "ok" : "no"` 中 `(x ?? 0)` 返回 `int`，但 ArkTS 允许 `int` 用作三元条件（预期需要 boolean）。
- **复现用例 ID：** EXP_07_01_01_024_FAIL_TERNARY_PRECEDENCE_TYPE
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `5 ?? 0 ? "ok" : "no"` | ✅ 编译通过，结果为 "ok" |
| Java | 同语境代码 | ❌ 编译错误: incompatible types |
| Swift | 同语境代码 | ❌ 编译错误: Type 'Int' cannot be used as a boolean |

- **建议：** 确认 ArkTS 是否应支持 truthy/falsy 语义。若不支持，需报类型错误；若支持，需更新 spec。

---
**7.2.2-001** ⭐ — 字面量负数组索引编译时错误

- **问题描述：** `arr[-1]` 中字面量负索引被 ArkTS 编译器在编译时静态检测报错，而 spec 规定应运行时抛出 RangeError。
- **复现用例 ID：** EXP_07_02_02_017_FAIL_NEGATIVE_ARRAY_INDEX
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `arr[-1]` | ❌ 编译时错误（实现额外保护） |
| Java | `arr[-1]` | ✅ 编译通过，运行时 ArrayIndexOutOfBoundsException |
| Swift | `arr[-1]` | ✅ 编译通过，运行时 fatal error |

- **建议：** 这是编译器良性增强（提前暴露 bug）。建议更新 spec 允许编译时可静态检测的负索引报错，与字面量除零规则一致。

---

**7.11.4-001** ⭐⭐ — void 静态方法结果赋值给变量编译通过（Spec 不一致）

- **问题描述：** spec 要求 `let x = A.method()`（void 方法返回值赋值）报编译时错误，但编译器实际允许通过，无任何错误或警告。
- **复现用例 ID：** EXP_07_11_04_007_FAIL_STATIC_VOID_ASSIGNED
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `let x = A.method()` | ❌ Compile-time error |
| ArkTS (实现) | `let x = A.method()` | ✅ 编译通过，无提示 |
| Java | `var x = doSomething()` | ❌ 编译错误: variable initializer is 'void' |
| Swift | `let x = doSomething()` | ⚠️ 编译通过但有 warning: inferred to have type '()' |

- **建议：** 按 spec 实现编译时错误，或更新 spec 允许 void 作为表达式值（类似 Swift）。

---

**7.11.4-002** ⭐⭐ — void 实例方法结果赋值给变量编译通过（Spec 不一致）

- **问题描述：** spec 要求 `let y = new A().method()`（void 方法返回值赋值）报编译时错误，但编译器实际允许通过。
- **复现用例 ID：** EXP_07_11_04_008_FAIL_INSTANCE_VOID_ASSIGNED
- **跨语言对比：** 同 7.11.4-001

---

**7.13.3-001** ⭐⭐ — Record 字段访问符号 .key2 编译器不支持（Spec 不一致）

- **问题描述：** spec 规定 `x.key2` 等价于 `x['key2']` 用于 Record 索引，但编译器报 `Property 'key2' does not exist on type 'Record'`。
- **复现用例 ID：** EXP_07_13_03_003_PASS_CASE1_FIELD_ACCESS
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `x.key2` | ✅ 等价于 `x['key2']` |
| ArkTS (实现) | `x.key2` | ❌ 编译错误: Property does not exist |
| Java | `x.key2` | ❌ 语法错误（Java 无此特性）|
| Swift | `x.key2` | ❌ 语法错误（Swift 无此特性）|

- **建议：** 实现 spec 中定义的字段访问符号，使其等价于方括号索引。

---

**7.13.3-002** ⭐⭐ — Case1 变量索引被编译器接受（Spec 不一致）

- **问题描述：** spec 要求 Case 1（字面量联合 Key）的索引必须是字面量，变量作为索引应报编译时错误，但编译器允许通过。
- **复现用例 ID：** EXP_07_13_03_010_FAIL_CASE1_VARIABLE_INDEX
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `let k='key1'; x[k]` | ❌ Compile-time error |
| ArkTS (实现) | `let k='key1'; x[k]` | ✅ 编译通过 |
| Java | `map.get(k)` | ✅ 编译通过（Map 无此限制）|
| Swift | `dict[k]` | ✅ 编译通过（Dictionary 无此限制）|

- **建议：** 按 spec 对 Case 1 的变量索引报编译时错误，或放宽 spec 允许变量索引（与 Java/Swift 一致）。

---

**7.23.2-001** ⭐ — int 字面量除零编译检测缺失

- **问题描述：** spec 要求 "if the divisor value of integer division is detected to be 0 during compilation, then a compile-time error occurs"，但 ArkTS 编译器未检测 `a / 0` 中的字面量 0，允许正常编译通过。
- **复现用例 ID：** EXP_07_23_02_027_FAIL_DIVISION_BY_ZERO_LITERAL
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `let x = a / 0` | ❌ Compile-time error |
| ArkTS (实现) | `let x = a / 0` | ✅ 编译通过（不检测） |
| Java | `int x = a / 0` | ✅ 编译通过，运行时 ArithmeticException |
| Swift | `let x = a / 0` | ✅ 编译通过，运行时 fatal error |

- **备注：** bigint 字面量除零 `a / 0n`（EXP_07_23_02_028）却被正确检测为编译时错误。编译器对 int 和 bigint 的字面量除零检测策略不一致。
- **建议：** 实现 spec 中字面量整数除零的编译时检测，或统一 int 与 bigint 检测策略。

---

**7.23.3-001** ⭐ — int 字面量取余除零编译检测缺失

- **问题描述：** spec 要求 "if the divisor value of integer remainder operator is detected to be 0 during compilation, then a compile-time error occurs"，但 ArkTS 编译器未检测 `a % 0`。
- **复现用例 ID：** EXP_07_23_03_027_FAIL_REMAINDER_BY_ZERO_LITERAL
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `let x = a % 0` | ❌ Compile-time error |
| ArkTS (实现) | `let x = a % 0` | ✅ 编译通过（不检测） |
| Java | `int x = a % 0` | ✅ 编译通过，运行时 ArithmeticException |
| Swift | `let x = a % 0` | ✅ 编译通过，运行时 fatal error |

- **备注：** 与 7.23.2 除法 `a / 0` 未检测模式一致。
- **建议：** 同一代码路径实现 int 和 bigint 的除零检测。

---

**7.23.3-002** ⭐ — bigint 字面量 0n 取余除零编译检测缺失

- **问题描述：** spec 要求 bigint 取余除零 0n 产生运行时错误，如编译期可检测则报编译时错误。但编译器未检测 `a % 0n`。
- **复现用例 ID：** EXP_07_23_03_028_FAIL_BIGINT_REMAINDER_BY_ZERO_LITERAL
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `let x = a % 0n` | ❌ Compile-time error |
| ArkTS (实现) | `let x = a % 0n` | ✅ 编译通过（不检测） |
| 除法对比 | `let x = a / 0n` | ❌ 编译时错误（7.23.2-028 正确检测） |

- **备注：** 与 7.23.2 中 bigint 除法 `a / 0n` 被正确检测的行为**不一致**。除法和取余运算符对 bigint 0n 的检测策略不同。
- **建议：** 统一除法和取余运算符的 bigint 除零 0n 检测策略。
- **跨语言说明：** Java/Swift 无 bigint，不适用此项比较。

---

**7.24-001** ⭐⭐ — 负数基底零指数结果不符合 IEEE 754

- **问题描述：** spec 要求 "x ** +/-0 returns 1 even if x is NaN"，但 `(-5.0) ** 0.0` 返回 NaN（应为 1.0）。
- **复现用例 ID：** EXP_07_24_033_RUNTIME_POW_ZERO_EXPONENT
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `(-5.0) ** 0.0` | NaN ⚠️ |
| Java | `Math.pow(-5.0, 0.0)` | 1.0 ✅ |
| Swift | `pow(-5.0, 0.0)` | 1.0 ✅ |

- **根因：** ArkTS `**` 对负数基底直接返回 NaN，未检查零指数特例。
- **建议：** 在 `**` 运算符实现的指数为零时提前返回 1.0，覆盖负数基底情况。

---

**7.24-002** ⭐⭐ — 负数基底整数指数结果不符合 IEEE 754

- **问题描述：** spec 说 "integer effectively means double with zero in the fractional part"，`(-2.0) ** 3.0` 应返回 -8.0（3.0 是整数），但 ArkTS 返回 NaN。
- **复现用例 ID：** EXP_07_24_041_RUNTIME_NEGATIVE_BASE_NON_INTEGER_EXPONENT
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `(-2.0) ** 3.0` | NaN ⚠️ |
| Java | `Math.pow(-2.0, 3.0)` | -8.0 ✅ |
| Swift | `pow(-2.0, 3.0)` | -8.0 ✅ |

- **根因：** ArkTS `**` 不识别 double 中的整数值，将所有负数基底 ** double 视为非整数指数。
- **建议：** 在 `**` 运算符中增加对 double 指数是否为整数值的检测，为负数基底整数指数返回有效数学结果。

---

**7.32.1-001** ⭐ — readonly array 赋值保护未实现

- **问题描述：** spec 要求 "Type of lhsExpression is readonly array, while the converted type of rhsExpression is a non-readonly array" 时产生 compile-time error，但编译器允许 `readonly int[] = int[]`。
- **复现用例 ID：** EXP_07_32_01_008_FAIL_READONLY_ARRAY
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `let a: readonly int[] = src` (src: int[]) | ❌ compile-time error |
| ArkTS (实现) | `let a: readonly int[] = src` (src: int[]) | ✅ 编译通过 |
| Swift | `let a: [Int] = src` | ✅ let 保证只读 |

- **建议：** 实现 readonly array 赋值的类型检查，在 lhs 为 readonly array 且 rhs 为非 readonly array 时报编译时错误。

---

**7.32.1-002** ⭐ — readonly tuple 赋值保护未实现

- **问题描述：** spec 要求 "Type of lhsExpression is readonly tuple, while the converted type of rhsExpression is a non-readonly tuple" 时产生 compile-time error，但编译器允许 `readonly [int, string] = [int, string]`。
- **复现用例 ID：** EXP_07_32_01_009_FAIL_READONLY_TUPLE
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `let t: readonly [int, string] = src` | ❌ compile-time error |
| ArkTS (实现) | `let t: readonly [int, string] = src` | ✅ 编译通过 |
| Swift | 无直接等价 readonly tuple 语法 | N/A |

- **建议：** 与 readonly array 同路径实现 readonly tuple 赋值保护。

---

**7.32.2-001** ⭐⭐ — ??= (Nullish Coalescing Assignment) 编译器不支持

- **问题描述：** Spec 7.32.2 显式声明 "While the nullish-coalescing assignment (??=) only evaluates the right operand, and assigns to the left operand if the left operand is null or undefined." 但编译器报 `Syntax error ESY0227: Unexpected token '??='`，完全不识别该运算符。
- **复现用例 ID：** EXP_07_32_02_005_FAIL_NULLISH_COALESCING_UNSUPPORTED, EXP_07_32_02_008_FAIL_NULLISH_NONNULLABLE, EXP_07_32_02_011_FAIL_NULLISH_BEHAVIOR_UNSUPPORTED
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `a ??= b` | ✅ 应支持：null/undefined 时赋值 |
| ArkTS (实现) | `a ??= b` | ❌ Syntax error ESY0227 |
| Java | `a ??= b` | ❌ 无此运算符 |
| Swift | `a ??= b` | ❌ 无此运算符（用 `a = a ?? b` 替代）|

- **建议：** 实现 ??= 运算符支持，或更新 spec 删除 ??= 定义（当前三语言均不支持）。

---

**7.35.2-001** ⭐ — 未初始化局部变量在 lambda 中捕获编译通过（Spec 不一致）

- **问题描述：** spec 要求 "A compile-time error occurs if a local variable is used in a lambda body but is neither declared in nor assigned before it." 但 ArkTS 编译器允许未初始化的局部变量在 lambda 中被捕获和使用。
- **复现用例 ID：** EXP_07_35_02_009_FAIL_UNINIT_LOCAL_CAPTURE
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `let x: int; const f = (): int => x` | ❌ Compile-time error |
| ArkTS (实现) | `let x: int; const f = (): int => x` | ✅ 编译通过，无提示 |
| Java | `int x; Supplier<Integer> f = () -> x` | ❌ 编译错误: variable x might not have been initialized |
| Swift | `var x: Int; let f = { x }` | ✅ 编译通过（Swift 变量有类型默认值，无此限制）|

- **建议：** 实现 spec 中未初始化变量捕获的编译时检测。Java 的 "variable might not have been initialized" 模式是良好参考。或确认当前行为是否是设计意图（允许捕获但变量值为类型默认值），若是则需更新 spec。

---

**7.19-001** ⭐ — void 表达式上应用 `!` 运算符编译通过（Spec 不一致）

- **问题描述：** ArkTS spec 规定 ensure-not-nullish 表达式检查"空值类型"（nullish types）。`void` 在 ArkTS 中 ≡ `undefined`，属于 nullish type。理论上 `void` 函数调用不产生值，应用 `!` 应报编译时错误，但当前编译器允许 `noop()!` 编译通过。
- **复现用例 ID：** EXP_07_19_021_FAIL_VOID_EXPRESSION
- **跨语言对比：**

| 语言 | void 表达式 + ! |
|------|----------------|
| ArkTS | ❌ 预期 compile-time error，实际编译器允许通过 |
| Java | N/A（void 方法不返回值） |
| Swift | N/A（void 函数不返回值） |

- **建议：** 实现 spec 中 void 表达式禁止应用 `!` 运算符的编译时检测。

---

**7.19-002** ⭐ — `undefined!` 赋值给非空类型编译通过（Spec 不一致）

- **问题描述：** `undefined` 是 nullish type，`undefined!` 的类型应推导为非空类型变体（理论上为 never/uninhabited）。`let x: int = undefined!` 预期是 compile-time error，但当前编译器允许通过。
- **复现用例 ID：** EXP_07_19_022_FAIL_ALWAYS_NULLISH_ASSIGN
- **跨语言对比：**

| 语言 | `undefined!` 类型 |
|------|------------------|
| ArkTS | ❌ 预期 compile-time error，实际编译器允许通过 |
| Java | N/A（无 undefined） |
| Swift | N/A（nil! 编译通过但运行崩溃） |

- **建议：** 对始终 nullish 的表达式应用 `!` 后，其类型应当正确推导为非空不可达类型，当赋值给非空具体类型时产生编译时错误。

---