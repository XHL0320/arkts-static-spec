/**
 * @id CLS_09_07_050_FAIL_ASYNC_NON_PROMISE_RETURN
 * @expect compile-fail
 * @section 9.7.4
 * @design async 方法必须返回 Promise<T>，不可返回非 Promise 类型
 * @note 编译错误：async 方法返回类型必须是 Promise<T>
 */
class BadAsync050 {
  async badReturn(): string { // 编译错误
    return "bad"
  }
}
