/**
 * @id CLS_09_07_051_FAIL_ASYNC_NATIVE
 * @expect compile-fail
 * @section 9.7.4
 * @design async + native 修饰符不可共存
 * @note 编译错误：native 方法不能是 async
 */
abstract class BadAsync051 {
  native async foo(): Promise<void> // 编译错误
}
