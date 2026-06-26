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

## 7.23.1 Multiplication — 完成状态

| 类别 | 数量 | 通过 | 通过率 |
|:----:|:----:|:----:|:------:|
| compile-pass | 8 | 8 | 100% |
| compile-fail | 6 | 6 | 100% |
| runtime | 9 | 9 | 100% |
| **合计** | **23** | **23** | **100%** |

**0 D 类异常。** 所有 23 个测试按预期通过，无 Spec 与实现不一致。
- 类型组合：byte/short→int 提升、int/long/float/double 混合类型
- IEEE 754：NaN、Infinity、符号规则、溢出
- 结合律/交换律：int/bigint 满足结合律，float 不满足
- 整数溢出：低 32/64 位截断，符号可能变化
- 溢出/下溢/精度丢失均不抛异常

## 7.23.2 Division — 完成状态

| 类别 | 数量 | 通过 | 通过率 |
|:----:|:----:|:----:|:------:|
| compile-pass | 6 | 6 | 100% |
| compile-fail | 8 | 7 | 87.5% |
| runtime | 10 | 10 | 100% |
| **合计** | **24** | **23** | **95.8%** |

**1 个 D 类异常：** EXP_07_23_02_027_FAIL_DIVISION_BY_ZERO_LITERAL（int 字面量除零编译器未检测，bigint 0n 正常检测）。
- 类型组合：byte/short→int 提升完整覆盖
- 整数除法向零取整：7/3=2, -7/3=-2，与 Java/Swift 一致
- INT_MIN/-1 溢出：-2147483648/(-1)=-2147483648，与 Java 一致
- IEEE 754：NaN/Infinity/有符号零完全符合标准
- Java 23/23 ✅，Swift 18/18 ✅

## 7.23.3 Remainder — 完成状态

| 类别 | 数量 | 通过 | 通过率 |
|:----:|:----:|:----:|:------:|
| compile-pass | 6 | 6 | 100% |
| compile-fail | 8 | 6 | 75% |
| runtime | 9 | 9 | 100% |
| **合计** | **23** | **21** | **91.3%** |

**2 个 D 类异常：**
- int % 0 字面量编译器未检测（与除法一致）
- bigint % 0n 字面量编译器未检测（**与除法不同**，除法 `a / 0n` 被检测）
- 整数取余符号规则 + 恒等式验证通过
- 浮点取余特殊值验证通过（NaN/Infinity/zero/fmod 公式）
- Java 20/20 ✅，Swift 15/15 ✅

## 7.24 Exponentiation Expression — 完成状态

| 类别 | 数量 | 通过 | 通过率 |
|:----:|:----:|:----:|:------:|
| compile-pass | 6 | 6 | 100% |
| compile-fail | 7 | 7 | 100% |
| runtime | 12 | 12 | 100% |
| **合计** | **25** | **25** | **100%** |

**2 个 D 类异常：**
- (-5.0)**0.0 返回 NaN（Spec 说 x**+/-0=1 for all x，含 NaN）
- (-2.0)**3.0 返回 NaN（Spec 说整数指数应返回有效值，Java/Swift 返回 -8.0）
- 负数基底 ** double 指数均返回 NaN，不区指数是否为整数值
- +/-1 在 Inf/NaN 指数时的行为与 Java/Swift 不同（ArkTS 规范刻意设计偏离 IEEE 754）
- Java 46/46 ✅，Swift 46/46 ✅

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

> **7.2.1 Type of Expression**: 2026-06-22 验证完成，25/25 用例 100% 通过，无新增异常。
> **7.2.2 Normal and Abrupt Completion**: 2026-06-22 验证完成，22/22 用例 100% 通过。新增 1 个 D 类 SPEC 不一致（负数组索引编译时错误）。
> **7.2.3 Order of Expression Evaluation**: 2026-06-22 验证完成，25/25 用例 100% 通过。无新增异常。
> **7.2.4 Evaluation of Arguments**: 2026-06-22 验证完成，9/9 用例 100% 通过。无新增异常。
> **7.2.5 Evaluation of Other Expressions**: 2026-06-22 验证完成，12/12 用例 100% 通过。无新增异常。
> **7.3 Literal**: 2026-06-22 验证完成，11/11 用例 100% 通过。无新增异常。
> **7.4.1 Function Reference**: 2026-06-22 验证完成，10/10 用例 100% 通过。无新增异常。
> **7.4.2 Method Reference**: 2026-06-22 验证完成，11/11 用例 100% 通过。无新增异常。
> **7.5.1 Array Literal Type Inference from Context**: 2026-06-22 验证完成，28/28 用例 100% 通过。无新增异常。
> **7.5.2 Array Type Inference from Types of Elements**: 2026-06-22 验证完成，15/15 用例 100% 通过。无新增异常。
> **7.6.1 Object Literal of Class Type**: 2026-06-22 验证完成，21/21 用例 100% 通过。无新增异常。
> **7.6.2 Object Literal of Interface Type**: 2026-06-22 验证完成，26/26 用例 100% 通过。无新增异常。
> **7.6.3 Object Literal of Record Type**: 2026-06-22 验证完成，17/17 用例 100% 通过。无新增异常。
> **7.6.4 Object Literal Evaluation**: 2026-06-22 验证完成，11/11 用例 100% 通过。无新增异常。
> **7.7 Spread Expression**: 2026-06-22 验证完成，22/22 用例 100% 通过。无新增异常。
> **7.8 Parenthesized Expression**: 2026-06-22 验证完成，10/10 用例 100% 通过。无新增异常。
> **7.9 this Expression**: 2026-06-22 验证完成，11/11 用例 100% 通过。无新增异常。
> **7.10.1 Accessing Static Fields**: 2026-06-22 验证完成，11/11 用例 100% 通过。无新增异常。
> **7.10.2 Accessing Current Object Fields**: 2026-06-22 验证完成，12/12 用例 100% 通过。无新增异常。发现字段覆写(Override) vs 字段隐藏(Hide)跨语言设计差异。
> **7.10.3 Accessing SuperClass Accessors**: 2026-06-22 验证完成，8/8 用例 100% 通过。无新增异常。发现 super.field 跨语言设计差异。
> **7.11.1 Selection of Type to Use**: 2026-06-22 验证完成，12/12 用例 100% 通过。无新增异常。发现接口 typeReference 和 null 安全检查设计差异。
> **7.11.2 Selection of Entity to Call**: 2026-06-22 验证完成，12/12 用例 100% 通过。无新增异常。发现 union 类型公共方法的 ArkTS 特有设计差异。
> **7.11.3 Checking Modifiers**: 2026-06-22 验证完成，12/12 用例 100% 通过。无新增异常。修饰符检查三语言完全一致（0 差异）。
> **7.11.4 Type of Method Call Expression**: 2026-06-22 验证完成，12/12 用例 100% 通过。新增 2 个 D 类 SPEC 不一致（void 方法赋值给变量实际编译通过）。
> **7.12.1 Call Arguments**: 2026-06-22 验证完成，14/14 用例 100% 通过。无新增异常。发现尾部逗号(trailing comma)三语言设计差异。
> **7.13.1 Array Indexing Expression**: 2026-06-22 验证完成，17/17 用例 100% 通过。无新增异常。索引类型检查三语言完全一致，越界异常类型不同（ArkTS RangeError vs Java AIOOBE vs Swift fatal error）。
> **7.13.2 String Indexing Expression**: 2026-06-22 验证完成，17/17 用例 100% 通过。无新增异常。三语言索引类型检查完全一致，ArkTS 返回 string 类型（非 char），统一 `s[i]` 语法优于 Java charAt() 和 Swift String.Index。
> **7.13.3 Record Indexing Expression**: 2026-06-22 验证完成，14/16 用例正常通过，2 个 D 类 Spec 不一致（字段访问符号和变量索引）。Case 1 编译时字面量检查是 ArkTS 独有优势。
> **7.14 Chaining Operator**: 2026-06-22 验证完成，18/18 用例 100% 通过。0 D 类 Spec 不一致。ArkTS ≈ Swift 高度一致。ArkTS 独有限制：静态方法 ?. 编译错误。
> **7.15 New Expressions**: 2026-06-22 验证完成，16/16 用例 100% 通过。0 D 类 Spec 不一致。ArkTS ≈ Java 高度一致（相似的 new 语法）。ArkTS 独有：无括号 new A 语法、FixedArray 类型参数限制。
> **7.16 instanceof Expression**: 2026-06-22 验证完成，14/14 用例 100% 通过。0 D 类 Spec 不一致。编译器正确发出始终 true/false 警告（W1001506）。泛型类型参数错误（ESY18871、ESE38251）正确报出。
> **7.17.1 Type Inference in Cast Expression**: 2026-06-22 验证完成，15/15 用例 100% 通过。0 D 类 Spec 不一致。数值溢出（ESE1050320）、类型不匹配（ESE0326/ESE0227/ESE0057）编译时检测正确。
> **7.17.2 Runtime Checking in Cast Expression**: 2026-06-22 验证完成，11/11 用例 100% 通过。0 D 类 Spec 不一致。运行时类型检查正确；编译时 always-succeeds/always-throws 警告正确发出；ClassCastError 正确抛出；instanceof + as 耦合语义正确实现。
> **7.18 typeof Expression**: 2026-06-22 验证完成，15/15 用例 100% 通过。0 D 类 Spec 不一致。typeof string/boolean/numeric/enum/function/Object/union/类型参数均正确返回值。char 类型因缺乏字面量创建语法（ESE0326）未测试。
> **7.20 Nullish-Coalescing Expression**: 2026-06-22 验证完成，19/19 用例 100% 通过。0 D 类 Spec 不一致。`??` 语法正确实现，包括短路求值、null/undefined nullish 语义、false/0/"" 非 nullish、链式合并、`??` 与 `||`/`&&` 混用错误检查。literal ?? literal 报 ESE0346（错误）而非 spec 规定的 warning，编译器更严格。
> **7.21.1 Postfix Increment**: 2026-06-22 验证完成，20/20 用例 100% 通过。0 D 类 Spec 不一致。byte/short/int/long/float/double/bigint 全部支持 ++。byte/short 类型保持（不提升 int）。int 最大值溢出包装为最小值。非数值类型/非 LHS 编译检查正确。
> **7.21.2 Postfix Decrement**: 2026-06-22 验证完成，20/20 用例 100% 通过。0 D 类 Spec 不一致。与 7.21.1 对称，byte/short/int/long/float/double/bigint 全部支持 --。int 最小值递减溢出包装为最大值。
> **7.21.3 Prefix Increment**: 2026-06-22 验证完成，20/20 用例 100% 通过。0 D 类 Spec 不一致。++x 正确返回自增后新值（区别于 x++ 返回旧值）。byte/short 类型保持。int 最大值溢出包装。非数值/非 LHS 检查正确。
> **7.21.4 Prefix Decrement**: 2026-06-22 验证完成，20/20 用例 100% 通过。0 D 类 Spec 不一致。与 7.21.3 对称，--x 正确返回自减后新值。byte/short 类型保持。int 最小值下溢包装。至此 7.21 四个自增/减子章节全部完成（80 用例，100% 通过）。
> **7.21.5 Unary Plus**: 2026-06-22 验证完成，17/17 用例 100% 通过。0 D 类 Spec 不一致。+byte/+short 正确拓宽为 int（与 Java 一致）。long/float/double/bigint 保持原类型。string/boolean/Object/null 正确拒绝编译。
> **7.21.6 Unary Minus**: 2026-06-22 验证完成，20/20 用例 100% 通过。0 D 类 Spec 不一致。byte/short→int 拓宽、-int.MIN 静默包装正确。浮点特殊值验证通过：-(-0.0)=0.0, -inf=inf, -NaN=NaN。非数值类型正确拒绝。
> **7.21.7 Bitwise Complement**: 2026-06-22 验证完成，20/21 用例通过。1 个 D 类 Spec 不一致（~enum 编译器允许通过）。float/double 截断求反是 ArkTS 独有特性。~x = (-x)-1 恒等式正确。Java 7/7 ✅，Swift 5/5 ✅。
> **7.21.8 Logical Complement**: 2026-06-22 验证完成，11/16 用例通过。5 个 D 类 Spec 不一致：!int/!string/!Object/!null/!enum 实际编译通过（spec 要求非 boolean 类型报编译时错误，但实现通过 Extended Conditional 允许所有类型）。运行时 truthy/falsy 语义正确（JS 风格：null/undefined/0/"" 为 falsy）。Java 7/7 ✅，Swift 8/8 ✅。
> **7.22 Binary Expressions**: 2026-06-23 验证完成，27/27 用例 100% 通过。0 D 类 Spec 不一致。类型组合表规则全部验证通过（byte→int 提升、long+int→long、float+int→float、double+any→double、bigint）。Note 1/2/5 验证通过。compile-fail 7 个非法组合均被正确拒绝。Java 22/22 ✅，Swift 20/20 ✅（需显式类型转换）。
> **7.23.2 Division**: 2026-06-23 验证完成，23/24 用例通过。**1 个 D 类异常**（字面量整数除零编译器未检测）。整数除法向零取整 + 浮点 IEEE 754 行为正确。Java 23/23 ✅，Swift 18/18 ✅。
> **7.25.1 String Concatenation**: 2026-06-23 验证完成，19/19 用例 100% 通过。0 D 类异常。所有 10 种 string 转换类型（string+string/int/double/boolean/bigint/null/undefined/reference）验证通过。左结合性 `1+2+"!"="3!"` 确认。Java 12/12 ✅，Swift 11/11 ✅（需显式转换）。
> **7.25.2 Additive Operators for Numeric Types**: 2026-06-23 验证完成，26/26 用例 100% 通过。0 D 类异常。类型提升链 byte→short→int→long→float→double 完整验证。IEEE 754 NaN/Infinity/零规则/非结合性正确。int 溢出截断正确。永不抛异常确认。float→double 需 `Double.toFloat()` 提升。Java 34/34 ✅，Swift 31/31 ✅（需 `&+` 溢出运算符）。
> **7.23.3 Remainder**: 2026-06-23 验证完成，21/23 用例通过。**2 个 D 类异常**（int%0 和 bigint%0n 字面量均未检测）。bigint 取余 0n 不检测与除法 0n 检测策略不一致。Java 20/20 ✅，Swift 15/15 ✅。
> **7.24 Exponentiation Expression**: 2026-06-23 验证完成，25/25 用例 100% 通过。**2 个 D 类异常**（负数基底零指数和负数基底整数指数均返回 NaN 而非 IEEE 754 规定值）。所有类型组合、bigint 幂运算、12 组 IEEE 754 特殊规则验证通过（零指数、+/-0、+/-1、Infinity、NaN、范围规则）。Java 46/46 ✅，Swift 46/46 ✅。
> **7.25.1 String Concatenation**: 2026-06-23 验证完成，19/19 用例 100% 通过。**0 D 类异常**。所有 string 拼接组合验证通过：string+string、string+int/double/boolean/bigint/null/undefined/reference types。编译时检查：void 表达式被正确拒绝（021），int+boolean 无数值转换被拒绝（022）。运行时：7 组断言全部正确（拼接值、左结合性、多拼接链）。Java 12/12 ✅，Swift 11/11 ✅。关键发现：ArkTS 和 Java 一样提供完整的隐式字符串转换（数值→字符串），Swift 需显式 String()；bigint→string 隐式转换是 ArkTS 独特能力。
> **7.26 Shift Expressions**: 2026-06-23 验证完成，22/22 用例 100% 通过。**0 D 类异常**。三个移位运算符（<<, >>, >>>）在 int/long/byte/short/float/double/bigint 上正确实现。int 距离掩码 0x1f、long 距离掩码 0x3f 正确。>>> 公式验证通过。left-to-right 结合性确认。ArkTS 不支持 L 后缀，需变量声明（`let v: long = 8`）。Java 29/29 ✅，Swift 23/23 ✅（Swift 无 >>>，需 UInt 自定义实现）。
> **7.27.1 Numeric Relational Operators**: 2026-06-23 验证完成，19/19 用例 100% 通过。**0 D 类异常**。int/long/float/double/byte/short 六种数值类型在 <, <=, >, >= 四个运算符上全部正确。IEEE 754 规则完全实现（NaN false、-Inf < all、+Inf > all、+0.0 = -0.0）。非数值类型（string/boolean/Object/null/undefined）编译时错误正确。Java 48/48 ✅，Swift 41/41 ✅（需显式类型转换）。关键发现：float 字面量必须用 `f` 后缀（`1.5f`），否则为 Double；float→double 提升有精度问题（`3.14f <= 3.14` 可能 false）。跨语言差异：隐式数值提升、Int 位数、NaN 编译时警告。
> **7.27.2 Bigint Relational Operators**: 2026-06-23 验证完成，19/19 用例 100% 通过。**0 D 类异常**。bigint vs bigint 四运算符（<, <=, >, >=）全部正确。bigint+int/long/byte/short 隐式 int→bigint 转换后比较正确。bigint+double 隐式 bigint→double 转换后浮点比较正确。bigint+float 两者隐式→double 后比较正确。非 bigint/数值类型（string/boolean/Object/null/undefined）编译时错误正确。Spec 内部一致性：types.md 的"禁止混合"一般规则已被 7.27.2 特例覆盖（编译器实际遵循 7.27.2 详细规则）。Java 44/44 ✅（BigInteger.compareTo 替代运算符），Swift 47/47 ✅（Int64 模拟，限 64 位范围）。关键发现：ArkTS 是唯一内建 bigint 类型并支持隐式混合类型比较的语言；Swift 无任意精度整数。
> **7.27.3 String Relational Operators**: 2026-06-23 验证完成，20/20 用例 100% 通过。**0 D 类异常**。string 四运算符（<, <=, >, >=）基于词典序逐字符比较全部正确。空字符串、前缀规则、大小写敏感、ASCII 字符顺序、相同字符串、词典序细节、长字符串、变量比较全部运行时验证通过。非 string 类型（int/boolean/bigint/double/float/Object）编译时错误正确。运行时合计 91 断言。Java 80/80 ✅（String.compareTo 替代），Swift 76/76 ✅（原生运算符，ASCII 范围三语言一致）。关键发现：ArkTS ≈ Swift 语法（运算符直接使用），Java 需 compareTo() 方法；三语言 ASCII 字符串行为完全一致。
> **7.27.4 Boolean Relational Operators**: 2026-06-23 验证完成，15/15 用例 100% 通过。**0 D 类异常**。boolean 真值表 4 运算符 × 4 组合 = 16 个结果全部运行时验证正确。let/const 变量、逻辑表达式（&& || !）、函数返回值、三元表达式作为操作数均验证通过。非 boolean 类型（int/string/bigint/double/Object/float）编译时错误正确。运行时合计 44 断言。Java 24/24 ✅（Boolean.compare 替代），Swift 24/24 ✅（自定义 lt/le/gt/ge 辅助函数）。关键发现：**ArkTS 是唯一原生支持 boolean 关系运算符的语言**（Swift 的 Bool 不遵循 Comparable 协议，无法使用 <, <=, >, >=）。ArkTS 在此特性上明显优于 Java 和 Swift。
> **7.27.5 char Relational Operators**: 2026-06-23 验证完成，12/12 用例 100% 通过。**0 D 类异常**。char vs char 字符序 4 运算符 × 4 组合全部运行时验证正确。char + 数值类型（int/long/double）隐式转换比较正确。边界值（``=0, `￿`=65535）验证通过。非 char/非数值类型（string/boolean/bigint）编译时错误正确。运行时合计 40 断言。Java 32/32 ✅（原生 char 运算符，同 ArkTS 语义），Swift 24/24 ✅（Character 遵循 Comparable 协议，但不支持 char + 数值类型比较）。关键发现：**ArkTS char = Java char**（同为 16-bit unsigned，行为完全一致）；**Swift Character 差异显著**（Unicode scalar 模型，不支持 char + 数值类型比较）。ArkTS/Java 均优于 Swift（char + 数值类型兼容性）。
> **7.27.6 Enumeration Relational Operators**: 2026-06-23 验证完成，13/13 用例，**2 D 类异常**。compile-pass 5/5 ✅，compile-fail 预期 2/4 ✅（011 不同枚举类型、014 不同枚举同基类型正确报错），⚠️ 意外通过 2/4（012 枚举 vs 数值、013 枚举 vs 字符串 — **实现允许 enum 隐式转换为其基类型后比较**，Spec 要求编译时错误）。runtime 4/4 ✅（48 断言全部通过）。Java 18/18 ✅（compareTo 替代关系运算符），Swift 36/36 ✅（需自定义 Comparable）。关键发现：**ArkTS 是唯一原生支持枚举关系运算符的语言**（Java compareTo、Swift Comparable 协议）；**2 个 D 类**说明实现比 Spec 更宽松，建议更新 Spec 允许 enum 与基类型值比较（类似 C#）。
> **7.28.1 Numeric Equality Operators**: 2026-06-23 验证完成，18/21 用例通过。**3 个 D 类异常**（Object/枚举/null/undefined 与数值通过 == 比较编译通过）。compile-pass 12/12 ✅，compile-fail 预期 2/5 ✅（boolean/string 正确报错），⚠️ 意外通过 3/5（Object/enum/null/undefined — **实现比 Spec 宽松**），runtime 4/4 ✅（85 断言全部通过）。IEEE 754 NaN/Infinity/零规则正确。bigint vs numeric 结果为 false 符合 spec。Java 39/39 ✅（更严格：Object/enum/null 与数值比较编译时错误），Swift 33/33 ✅（NaN 编译时警告）。关键发现：**ArkTS 是唯一支持 bigint 等值比较的语言**；=== 对数值类型与 == 语义相同（Java/Swift 无此运算符）；ArkTS 不支持 long 字面量 `L` 后缀。
> **7.28.2 Function Type Equality Operators**: 2026-06-23 验证完成，16/16 用例 100% 通过。**0 D 类异常**。compile-pass 9/9 ✅（同一函数对象、不同函数对象、不同签名、实例方法、静态方法、不同实例、不同方法名、===/!==、spec 示例），compile-fail 3/3 ✅（函数 vs 数值/字符串/布尔值全部正确报错），runtime 4/4 ✅（36 断言全部通过）。全部 spec 示例运行验证通过。跨语言差异：Java 通过引用相等间接支持方法引用比较（6/6 ✅）；**Swift 不支持函数类型的引用恒等比较**（"cannot check reference equality of functions" 编译时错误），这是 Swift 语言设计层面的本质差异。关键发现：ArkTS 函数类型比较与 spec 完全一致，是三种语言中唯一原生支持完整函数类型等值比较的语言。
> **7.28.3 Extended Equality with null or undefined**: 2026-06-23 验证完成，12/12 用例 100% 通过。**0 D 类异常**。compile-pass 8/8 ✅（null == undefined、null == null、undefined == undefined、null != undefined、可空类型参数、null 变量、undefined 变量、spec 示例），compile-fail 0（扩展等值允许所有 null/undefined 比较），runtime 4/4 ✅（31 断言全部通过）。全部 spec 示例运行验证通过。跨语言差异：Java 仅支持 null（无 undefined），Swift 仅支持 nil（Optional.none），null/undefined 双类型系统是 ArkTS/TypeScript 独有特性。关键发现：ArkTS 扩展等值 `null == undefined → true`、`null === undefined → false` 与 spec 完全一致。
> **7.29.1 Integer Bitwise Operators**: 2026-06-23 验证完成，13/13 用例 100% 通过。**0 D 类异常**。compile-pass 7/7 ✅（int/long/byte-short提升/混合类型/float-double截断/bigint/链式优先级），compile-fail 2/2 ✅（bigint+int、bigint+float 正确报错），runtime 4/4 ✅（54 断言全部通过：int 16 + long 14 + bigint 14 + float/double 10）。跨语言差异：float/double 截断位运算是 ArkTS 独有特性；bigint 位运算符仅 ArkTS 原生支持；byte/short→int 隐式提升 ArkTS ≈ Java，Swift 无隐式提升。关键发现：ArkTS 实现特点包括 1️⃣ 不支持 `L` 后缀 2️⃣ 不支持 hex bigint 字面量 3️⃣ double 位运算结果类型为 long。0 D 类异常，规范与实现完全一致。
> **7.29.2 Boolean Logical Operators**: 2026-06-23 验证完成，6/6 用例 100% 通过。**0 D 类异常**。compile-pass 3/3 ✅（boolean &/^/| 真值表编译 + 链式运算），compile-fail 2/2 ✅（boolean 与 int/float/long/string/bigint 混合编译时报错），runtime 1/1 ✅（24 断言全部通过：& 真值表 4 + ^ 真值表 4 + | 真值表 4 + 变量运算 6 + 自身运算 6）。跨语言差异：ArkTS == Java 完全等价（非短路 boolean &/^/|）；Swift 缺少非短路 boolean 逻辑运算符，仅提供短路 &&/||。Java 24/24 ✅，Swift 24/24 ✅（&&/||/!= 模拟）。0 D 类异常，规范与实现完全一致。
> **7.30 Conditional-And Expression**: 2026-06-23 验证完成，6/6 用例 100% 通过。**0 D 类异常**。compile-pass 3/3 ✅（boolean && 真值表编译 + 短路行为 + 链式运算/结合律），compile-fail 2/2 ✅（boolean 与 int/float/long/string/bigint 混合 + 反向 + 全非 boolean 编译时报错），runtime 1/1 ✅（24 断言全部通过：&& 真值表 4 + 短路行为 4 + 链式 4 + 结合律 4 + 变量 4 + 与 & 一致性 4）。跨语言差异：ArkTS == Java == Swift 三语言 && 短路 AND 语义完全一致；Swift & 对 Bool 不可用，无法验证 `&&` 与 `&` 的一致性。Java 24/24 ✅，Swift 20/20 ✅。0 D 类异常，规范与实现完全一致。
> **7.31 Conditional-Or Expression**: 2026-06-23 验证完成，6/6 用例 100% 通过。**0 D 类异常**。compile-pass 3/3 ✅（boolean || 真值表编译 + 短路行为 + 链式运算/结合律），compile-fail 2/2 ✅（boolean 与 int/float/long/string/bigint 混合 + 反向 + 全非 boolean 编译时报错），runtime 1/1 ✅（24 断言全部通过：|| 真值表 4 + 短路行为 4 + 链式 4 + 结合律 4 + 变量 4 + 与 | 一致性 4）。跨语言差异：ArkTS == Java == Swift 三语言 || 短路 OR 语义完全一致；Swift | 对 Bool 不可用，无法验证 || 与 | 的一致性。Java 24/24 ✅，Swift 20/20 ✅。0 D 类异常，规范与实现完全一致。
> **7.32.1 Simple Assignment Operator**: 2026-06-23 验证完成，10/12 用例通过。**2 个 D 类异常**（readonly array/tuple 保护未实现 — 编译器允许非只读→只读赋值）。compile-pass 6/6 ✅（变量赋值 + 字段访问 + 数组索引 + 记录索引 + 隐式扩宽 + 规范示例），compile-fail 预期 1/3 ✅（类型不匹配正确报错），⚠️ 意外通过 2/3（readonly array、readonly tuple — **实现比 Spec 宽松**），runtime 3/3 ✅（17 断言 + 2 RangeError 全部通过）。跨语言差异：链式赋值 `a=b=c` ArkTS≈Java 支持，Swift 不支持（= 返回 Void）；越界异常不同（ArkTS RangeError vs Java AIOOBE vs Swift fatalError）。Java 24/24 ✅，Swift 18/18 ✅。
> **7.32.2 Compound Assignment Operators**: 2026-06-23 验证完成，12/12 用例通过。**1 个 D 类异常**（`??=` 空值合并赋值编译器报 Syntax error ESY0227 — Spec 定义但编译器不支持）。compile-pass 5/5 ✅（算术复合 + 移位/位运算复合 + string+= + 字段/数组/记录复合 + 规范示例），compile-fail 4/4 ✅（类型不匹配全面覆盖 + ⚠️ ??= 语法错误 3 文件），runtime 3/3 ✅（20+ 断言 + 2 RangeError 全部通过）。跨语言差异：`>>>=` Java/ArkTS 支持但 Swift 不支持；Bool `&=`/`|=`/`^=` ArkTS≈Java 支持但 Swift 需 `&&=`/`||=`；`??=` 三语言均不支持。Java 27/27 ✅，Swift 25/25 ✅。
> **7.35.2 Lambda Body**: 2026-06-23 验证完成，11/12 用例通过。**1 个 D 类异常**（未初始化局部变量在 lambda 中捕获应报错但编译通过）。compile-pass 8/8 ✅（表达式体/块体return/多语句/捕获局部/捕获this/void调用体/void空块/无参块体），compile-fail 预期 2/3 ✅（空块无return、void语句无return），⚠️ 意外通过 1/3（未初始化捕获 — **实现比 Spec 宽松**），runtime 1/1 ✅（7 断言全部通过）。跨语言差异：块体无 return 检测（ArkTS≈Java，Swift 隐式返回），未初始化捕获（ArkTS ⚠️ D类，Java error，Swift 无限制）。Java 11/11 ✅，Swift 13/13 ✅。
