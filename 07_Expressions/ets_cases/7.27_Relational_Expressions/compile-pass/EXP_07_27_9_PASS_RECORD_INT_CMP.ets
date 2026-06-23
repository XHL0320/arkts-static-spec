/**
 * @id EXP_07_27_9_FAIL_RECORD_INT_CMP
 * @expect compile-pass
 * @section 7.27
 * @design record 与 int 比较应报错
 * @note 正向用例：验证该场景es2panda编译通过（D类-Spec与实现差异）。
 */

function testRecordIntCmpFail(): void {
  let r: Record<string, int> = {"key": 1}; let b: boolean = true < false
}
