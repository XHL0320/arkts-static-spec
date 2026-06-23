/**
 * @id EXP_07_27_10_PASS_INT_LARGE_CMP
 * @expect compile-pass
 * @section 7.27
 * @design 大 int 值比较
 * @note 正向用例：验证该特性编译通过的正确用法。
 */

function testIntLargeCmp(): void {
  let a: int = 2147483647; let b: int = -2147483648
  let r: boolean = a > b; let r2: boolean = a >= 0
  console.log(r.toString(), r2.toString())
}
