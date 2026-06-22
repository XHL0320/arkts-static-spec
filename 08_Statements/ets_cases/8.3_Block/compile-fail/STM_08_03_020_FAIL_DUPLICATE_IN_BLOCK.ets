/**
 * @id STM_08_03_020_FAIL_DUPLICATE_IN_BLOCK
 * @expect compile-fail
 * @section 8.3
 * @design 块内重复声明同名变量应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testDuplicateInBlockFail(): void {
  let item: int = 1
  { let item: string = "dup" }
  let item: int = 2
  console.log(item.toString())
}
