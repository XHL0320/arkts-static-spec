/**
 * @id STM_08_03_025_FAIL_INTERFACE_IN_BLOCK
 * @expect compile-fail
 * @section 8.3
 * @design 块内 interface 声明被拒绝
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testInterfaceInBlockFail(): void {
  { interface LocalI { f: int } }
  console.log("never")
}
