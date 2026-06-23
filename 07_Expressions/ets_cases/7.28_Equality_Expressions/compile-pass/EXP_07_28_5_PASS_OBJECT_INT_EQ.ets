/**
 * @id EXP_07_28_5_FAIL_OBJECT_INT_EQ
 * @expect compile-pass
 * @section 7.28
 * @design Object与int相等应报错
 * @note 正向用例：验证该场景es2panda编译通过（D类-Spec与实现差异）。
 */

function testObjectIntEqFail(): void {
  let o: Object = new Object(); let r: boolean = o == 5
}
