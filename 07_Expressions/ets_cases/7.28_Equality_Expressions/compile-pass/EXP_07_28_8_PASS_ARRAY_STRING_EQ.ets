/**
 * @id EXP_07_28_8_FAIL_ARRAY_STRING_EQ
 * @expect compile-pass
 * @section 7.28
 * @design 数组与字符串相等应报错
 * @note 正向用例：验证该场景es2panda编译通过（D类-Spec与实现差异）。
 */

function testArrayStringEqFail(): void {
  let a: int[] = [1]; let r: boolean = a == "1"
}
