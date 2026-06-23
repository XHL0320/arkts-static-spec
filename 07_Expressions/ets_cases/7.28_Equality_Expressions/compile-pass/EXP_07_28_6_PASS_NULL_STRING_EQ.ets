/**
 * @id EXP_07_28_6_FAIL_NULL_STRING_EQ
 * @expect compile-pass
 * @section 7.28
 * @design null与string相等应报错
 * @note 正向用例：验证该场景es2panda编译通过（D类-Spec与实现差异）。
 */

function testNullStringEqFail(): void {
  let r: boolean = null == "a"
}
