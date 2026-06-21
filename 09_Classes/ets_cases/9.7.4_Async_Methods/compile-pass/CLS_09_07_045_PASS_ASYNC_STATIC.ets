/**
 * @id CLS_09_07_045_PASS_ASYNC_STATIC
 * @expect compile-pass
 * @section 9.7.4
 * @design static async 方法声明
 * @note 静态方法和 async 可组合使用
 */
class AsyncProcessor045 {
  static async process(): Promise<string> {
    return "static_async"
  }
}
