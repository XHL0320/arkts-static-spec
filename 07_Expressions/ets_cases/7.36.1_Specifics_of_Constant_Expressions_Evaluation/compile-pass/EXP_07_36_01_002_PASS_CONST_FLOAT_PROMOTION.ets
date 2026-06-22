/**
 * @id EXP_07_36_01_002_PASS_CONST_FLOAT_PROMOTION
 * @expect compile-pass
 * @section 7.36.1
 * @design 常量表达式 float 提升
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
const F1: float = 1.5
const F2: int = 2
const RESULT: float = F1 * F2
function testConstFloatPromotion(): void {
  console.log(RESULT.toString())
}
