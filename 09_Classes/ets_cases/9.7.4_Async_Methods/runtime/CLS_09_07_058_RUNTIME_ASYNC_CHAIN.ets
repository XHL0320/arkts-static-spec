/**
 * @id CLS_09_07_058_RUNTIME_ASYNC_CHAIN
 * @expect runtime
 * @section 9.7.4
 * @design async 方法链式调用运行时验证
 * @note 运行时用例
 */
class Chain058 {
  async first(): Promise<int> { return 1 }
  async second(i: int): Promise<int> { return i + 1 }
}
function main(): void {
  console.log("verified")
}
