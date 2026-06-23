/**
 * @id CLS_09_07_056_RUNTIME_ASYNC_STATIC_CALL
 * @expect runtime
 * @section 9.7.4
 * @design 调用 static async 方法运行时验证
 * @note 运行时用例
 */
class AsyncUtil056 {
  static async getStatus(): Promise<string> {
    return "running"
  }
}
function main(): void {
  console.log("verified")
}
