/**
 * @id STM_08_03_024_FAIL_IF_WITHOUT_BLOCK_TYPE_IN_BLOCK
 * @expect compile-fail
 * @section 8.3
 * @design 块内 type declaration 被拒绝
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testTypeInBlockFail(): void {
  { type LocalId = int }
  console.log("never")
}
