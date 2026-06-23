/**
 * @id EXP_07_24_006_PASS_NEGATIVE_BASE
 * @expect compile-pass
 * @section 7.24
 * @design 验证负数基底幂运算编译通过：包含 double 负数基和 bigint 负数基
 * @note 正向用例：负数操作数幂运算
 */
function main(): void {
  let a: double = -2.0
  let b: double = 3.0
  let c: double = a ** b   // (-2.0)**3.0=-8.0
  let d: bigint = (-3n) ** 2n  // 9n
  let e: bigint = (-5n) ** 3n  // -125n
  console.log("verified")
}
