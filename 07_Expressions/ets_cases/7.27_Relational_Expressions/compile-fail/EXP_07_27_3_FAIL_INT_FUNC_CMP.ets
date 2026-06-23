/**
 * @id EXP_07_27_3_FAIL_INT_FUNC_CMP
 * @expect compile-fail
 * @section 7.27
 * @design int 与函数结果比较应报错
 * @note 反向用例：验证该场景应产生编译时错误。
 */

function foo(): int { return 5 }
function testIntFuncCmpFail(): void {
  let r: boolean = 10 < foo
}
