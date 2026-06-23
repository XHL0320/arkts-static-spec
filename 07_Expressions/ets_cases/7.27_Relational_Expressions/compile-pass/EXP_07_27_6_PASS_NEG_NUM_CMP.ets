/**
 * @id EXP_07_27_6_PASS_NEG_NUM_CMP
 * @expect compile-pass
 * @section 7.27
 * @design 负数关系比较
 * @note 正向用例：验证该特性编译通过的正确用法。
 */

function testNegNumCmp(): void {
  let a: int = -10; let b: int = -5; let r: boolean = a < b
  console.log(r.toString())
}
