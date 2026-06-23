/**
 * @id EXP_07_27_7_PASS_MULTI_OP_CMP
 * @expect compile-pass
 * @section 7.27
 * @design 多运算符组合比较
 * @note 正向用例：验证该特性编译通过的正确用法。
 */

function testMultiOpCmp(): void {
  let a: int = 5; let b: int = 10; let c: int = 15
  let r: boolean = (a < b) == (b < c)
  console.log(r.toString())
}
