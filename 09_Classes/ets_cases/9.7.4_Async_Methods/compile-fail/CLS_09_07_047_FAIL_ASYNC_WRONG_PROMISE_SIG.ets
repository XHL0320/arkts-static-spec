/**
 * @id CLS_09_07_047_FAIL_ASYNC_WRONG_PROMISE_SIG
 * @expect compile-fail
 * @section 9.7.4
 * @design async 方法返回 Promise 但构造函数签名不匹配
 * @note 编译错误：Promise 构造器参数签名必须匹配
 */
class BadAsync047 {
  async fetch(): Promise<string> {
    // Promise constructor expects (resolve, reject) => void, not () => T
    return new Promise<string>(() => "direct") // 编译错误：构造器签名不匹配
  }
}
