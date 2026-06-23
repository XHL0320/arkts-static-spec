/**
 * @id LEX_02_08_017_FAIL_CONST_REASSIGN
 * @expect compile-fail
 * @section 2.8
 * @design 对 const 变量使用赋值运算符 = 应编译失败
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testConstReassign(): void {
  const x: number = 10
  x = 20
}
