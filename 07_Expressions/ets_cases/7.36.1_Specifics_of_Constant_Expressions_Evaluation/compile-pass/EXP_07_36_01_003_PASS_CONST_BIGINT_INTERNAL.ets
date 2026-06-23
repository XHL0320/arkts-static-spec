/**
 * @id EXP_07_36_01_003_PASS_CONST_BIGINT_INTERNAL
 * @expect compile-pass
 * @section 7.36.1
 * @design 常量表达式大整数内部类型（任意精度）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
const BIG: int = 2147483647 * 2
const NEG_BIG: int = -2147483648 * 2
function testConstBigintInternal(): void {
  console.log(BIG.toString(), NEG_BIG.toString())
}
