/**
 * @id EXP_07_28_7_FAIL_UNDEFINED_INT_EQ
 * @expect compile-pass
 * @section 7.28
 * @design undefined与int相等应报错
 * @note 正向用例：验证该场景es2panda编译通过（D类-Spec与实现差异）。
 */

function testUndefinedIntEqFail(): void {
  let r: boolean = undefined == 5
}
