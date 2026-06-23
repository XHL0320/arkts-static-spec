/**
 * @id EXP2_17_10_02_011_FAIL_NATIVE_IN_INTERFACE
 * @expect compile-fail
 * @section 17.10.2
 * @design interface 中不能使用 native 方法：验证 interface 中使用 native 关键字产生语法错误 ESY0224
 * @note 反向用例：验证该场景应产生编译时错误 - Identifier expected, got 'native'
 */
interface BadInterface {
  native foo(): void
}
