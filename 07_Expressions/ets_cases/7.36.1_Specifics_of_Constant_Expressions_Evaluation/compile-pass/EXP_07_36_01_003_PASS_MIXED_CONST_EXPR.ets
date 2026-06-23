/**
 * @id EXP_07_36_01_003_PASS_MIXED_CONST_EXPR
 * @expect compile-pass
 * @section 7.36.1
 * @design 验证混合常量表达式：各数值子表达式独立求值（对应 spec 示例）
 * @note 正向用例：混合常量表达式 c > 1 && c*2 < 8 等编译通过
 */

// Spec 示例：const c = 3; c > 1 && c*2 < 8
// 数值子表达式 (c > 1) 和 (c*2 < 8) 独立求值
const c: int = 3
const result1: boolean = c > 1 && c * 2 < 8    // true && true = true
const result2: boolean = c > 5 || c * 2 < 10   // false || true = true

// 混合整数与 double 子表达式
const d: double = 3.0
const result3: boolean = d > 1.0 && d * 2 < 10.0

// 混合幂运算子表达式
const exp: double = 2 ** 3 + 1   // (2**3) + 1 = 8 + 1 = 9 (double)

// 嵌套混合表达式
const nested1: boolean = (3 + 5) > (2 * 3) && (10 - 2) == (4 + 4)
const nested2: int = (3 > 1) ? (10 + 20) : (5 * 6)

// 逻辑运算与关系运算混合
const logic1: boolean = (3 < 5) && (10 >= 8) || (7 == 6)
const logic2: boolean = !(3 > 5) && (4 != 5)

// 位运算与算术运算混合
const bitArith: int = (0x0F << 4) | (0x0F & 0x03)
