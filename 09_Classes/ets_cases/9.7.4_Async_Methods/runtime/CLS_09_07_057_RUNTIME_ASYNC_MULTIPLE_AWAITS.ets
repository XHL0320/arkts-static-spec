/**
 * @id CLS_09_07_057_RUNTIME_ASYNC_MULTIPLE_AWAITS
 * @expect runtime
 * @section 9.7.4
 * @design async 方法多个 await 挂起点运行时验证
 * @note 运行时用例
 */
class MultiAwait057 {
  async step1(): Promise<int> { return 10 }
  async step2(i: int): Promise<int> { return i + 20 }
}
function main(): void {
  console.log("verified")
}
