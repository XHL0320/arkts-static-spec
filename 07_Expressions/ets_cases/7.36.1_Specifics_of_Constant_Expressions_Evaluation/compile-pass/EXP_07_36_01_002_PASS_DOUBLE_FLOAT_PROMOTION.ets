/**
 * @id EXP_07_36_01_002_PASS_DOUBLE_FLOAT_PROMOTION
 * @expect compile-pass
 * @section 7.36.1
 * @design 验证 double/float 类型提升及幂运算在常量表达式中的行为
 * @note 正向用例：double+int 提升为 double，幂运算始终为 double
 */

// double 提升：任一操作数为 double → 全部转为 double，结果 double
const d1: double = 3.0 + 5       // double + int → double
const d2: double = 10.5 - 3      // double - int → double
const d3: double = 2.5 * 4       // double * int → double
const d4: double = 10.0 / 3      // double / int → double
const d5: double = 10.5 % 3      // double % int → double

// 多个操作数混合
const d6: double = 1.0 + 2 + 3   // double + int + int → double

// 引用 double 类型的 const
const baseDouble: double = 2.5
const d7: double = baseDouble * 4  // double * int → double

// 幂运算：始终为 double（无论操作数类型）
const e1: double = 2 ** 3        // int ** int → double
const e2: double = 5 ** 0        // int ** int → double
const e3: double = 2.0 ** 3      // double ** int → double
const e4: double = 2 ** 3.0      // int ** double → double

// 引用 const 的幂运算
const baseExp: int = 2
const e5: double = baseExp ** 4

// 混合 double 和幂运算
const de1: double = 2.0 * 3 ** 2   // 先幂运算（double）再乘法
