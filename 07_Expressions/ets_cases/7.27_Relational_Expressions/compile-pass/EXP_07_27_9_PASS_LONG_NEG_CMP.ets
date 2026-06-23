/**
 * @id EXP_07_27_9_PASS_LONG_NEG_CMP
 * @expect compile-pass
 * @section 7.27
 * @design long 负数比较
 * @note 正向用例：验证该特性编译通过的正确用法。
 */

function testLongNegCmp(): void {
  let a: long = -100; let b: long = -50; let r: boolean = a < b
  console.log(r.toString())
}
