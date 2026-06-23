/**
 * @id EXP_07_36_01_005_RUNTIME_TYPE_PROMOTION
 * @expect runtime
 * @section 7.36.1
 * @design 验证 double/float 类型提升及幂运算在常量表达式中的运行时结果
 * @note 运行时用例：double+int 提升为 double 值正确，幂运算结果为 double 值正确
 */

// double 提升常量
const d1: double = 3.0 + 5       // double + int → double: 8.0
const d2: double = 10.5 - 3      // double - int → double: 7.5
const d3: double = 2.5 * 4       // double * int → double: 10.0
const d4: double = 10.0 / 3      // double / int → double: ~3.333...
const d5: double = 1.0 + 2 + 3   // double + int + int → double: 6.0

// 幂运算常量：始终为 double
const e1: double = 2 ** 3        // int ** int → double: 8.0
const e2: double = 5 ** 0        // int ** int → double: 1.0
const e3: double = 2.0 ** 3      // double ** int → double: 8.0
const e4: double = 2 ** 3.0      // int ** double → double: 8.0

function main(): void {
  if (d1 != 8.0) {
    throw new Error("assertion failed 1: 3.0+5 expected 8.0, got " + d1)
  }
  if (d2 != 7.5) {
    throw new Error("assertion failed 2: 10.5-3 expected 7.5, got " + d2)
  }
  if (d3 != 10.0) {
    throw new Error("assertion failed 3: 2.5*4 expected 10.0, got " + d3)
  }
  // d4: 10.0/3 = 3.333..., use tolerance
  if (d4 < 3.33 || d4 > 3.34) {
    throw new Error("assertion failed 4: 10.0/3 expected ~3.333, got " + d4)
  }
  if (d5 != 6.0) {
    throw new Error("assertion failed 5: 1.0+2+3 expected 6.0, got " + d5)
  }

  // 幂运算验证
  if (e1 != 8.0) {
    throw new Error("assertion failed 6: 2**3 expected 8.0, got " + e1)
  }
  if (e2 != 1.0) {
    throw new Error("assertion failed 7: 5**0 expected 1.0, got " + e2)
  }
  if (e3 != 8.0) {
    throw new Error("assertion failed 8: 2.0**3 expected 8.0, got " + e3)
  }
  if (e4 != 8.0) {
    throw new Error("assertion failed 9: 2**3.0 expected 8.0, got " + e4)
  }

  console.log("verified")
}
