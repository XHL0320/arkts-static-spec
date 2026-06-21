/**
 * @id CLS_09_07_052_FAIL_ASYNC_STATIC_FINAL
 * @expect compile-fail
 * @section 9.7.4
 * @design async + static + final 修饰符组合检查
 * @note 编译错误：final 不能与 async 组合
 */
class BadAsync052 {
  static final async combo(): Promise<void> {} // 编译错误
}
