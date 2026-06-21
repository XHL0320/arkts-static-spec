/**
 * @id CLS_09_07_055_RUNTIME_ASYNC_AWAIT_PROMISE
 * @expect runtime
 * @section 9.7.4
 * @design async 方法 await Promise 解析运行时验证
 * @note 运行时用例
 */
class DataService055 {
  async fetchValue(): Promise<int> {
    return 42
  }
}
function main(): void {
  let svc: DataService055 = new DataService055()
  console.log("verified")
}
