/**
 * @id EXP_07_27_5_PASS_SHORT_INT_PROMO
 * @expect compile-pass
 * @section 7.27
 * @design short 提升为 int 比较
 * @note 正向用例：验证该特性编译通过的正确用法。
 */

function testShortIntPromo(): void {
  let a: short = -5; let b: int = 5; let r: boolean = a < b
  console.log(r.toString())
}
