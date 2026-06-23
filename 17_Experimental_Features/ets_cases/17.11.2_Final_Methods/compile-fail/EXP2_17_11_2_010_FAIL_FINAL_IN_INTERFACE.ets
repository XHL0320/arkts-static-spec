/**
 * @id EXP2_17_11_2_010_FAIL_FINAL_IN_INTERFACE
 * @expect compile-fail
 * @section 17.11.2
 * @design 接口中声明 final 方法：验证接口方法不能使用 final 修饰符
 * @note 反向用例：验证接口中 final 方法产生编译错误或警告
 */
interface IFoo {
  final doit(): void
}
