/**
 * @id LEX_02_02_017_FAIL_NESTED_COMMENT
 * @expect compile-fail
 * @section 2.2
 * @design 嵌套多行注释（ArkTS应不支持），外层 */ 提前关闭导致后续代码出错 * @note 反向用例：验证该场景应产生编译时错误

 */
function testNestedComment(): void {
  /* outer /* inner */ still comment
  let x: number = 1
}
