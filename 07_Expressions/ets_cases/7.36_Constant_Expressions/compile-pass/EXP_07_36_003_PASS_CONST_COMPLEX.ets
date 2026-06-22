/**
 * @id EXP_07_36_003_PASS_CONST_COMPLEX
 * @expect compile-pass
 * @section 7.36
 * @design 常量表达式：复杂运算组合
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
const A: int = 5
const B: int = 3
const SUM: int = A + B
const PROD: int = A * B
const COND: int = A > B ? A : B
const BIT: int = (A & B) | (A ^ B)
function testConstComplex(): void {
  console.log(SUM.toString(), PROD.toString(), COND.toString(), BIT.toString())
}
