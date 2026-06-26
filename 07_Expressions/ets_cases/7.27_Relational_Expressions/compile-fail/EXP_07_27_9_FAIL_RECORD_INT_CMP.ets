/**
 * @id EXP_07_27_9_FAIL_RECORD_INT_CMP
 * @expect compile-fail
 * @section 7.27
 * @design record 与 int 比较应报错
 * @note 反向用例：Record<string,int> 与 int 不满足关系运算操作数类型要求（spec §7.27），es2panda 正确报 ESE0114 编译失败。
 */

function testRecordIntCmpFail(): void {
  let r: Record<string, int> = {"key": 1}
  let b: boolean = r < 1  // record < int: spec §7.27 非法操作数类型
}
