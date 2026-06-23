/**
 * @id EXP_07_36_01_001_PASS_CONST_DOUBLE_PROMOTION
 * @expect compile-pass
 * @section 7.36.1
 * @design 常量表达式 double 提升（操作数为 double 时其他转 double）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
const D1: double = 1.5
const D2: int = 2
const RESULT: double = D1 * D2
function testConstDoublePromotion(): void {
  console.log(RESULT.toString())
}
