/**
 * @id EXP_07_28_3_FAIL_INT_BIGINT_MIX
 * @expect compile-pass
 * @section 7.28
 * @design int与bigint相等应报错
 * @note 正向用例：验证该场景es2panda编译通过（D类-Spec与实现差异）。
 */

function testIntBigintMixFail(): void {
  let r: boolean = 5 == 5n
}
