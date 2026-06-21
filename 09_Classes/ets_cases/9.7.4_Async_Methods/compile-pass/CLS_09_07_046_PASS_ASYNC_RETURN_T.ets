/**
 * @id CLS_09_07_046_PASS_ASYNC_RETURN_T
 * @expect compile-pass
 * @section 9.7.4
 * @design async 方法返回非 Promise 的 T，自动装箱为 Promise<T>
 * @note 正向用例：async 方法返回 T，自动 wrap 为 Promise<T>
 */
class DataService046 {
  async getValue(): Promise<int> {
    return 42
  }
  async getName(): Promise<string> {
    return "hello"
  }
}
