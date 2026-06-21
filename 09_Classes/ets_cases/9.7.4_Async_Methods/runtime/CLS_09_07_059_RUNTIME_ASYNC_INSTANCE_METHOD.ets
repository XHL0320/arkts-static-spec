/**
 * @id CLS_09_07_059_RUNTIME_ASYNC_INSTANCE_METHOD
 * @expect runtime
 * @section 9.7.4
 * @design 实例 async 方法通过字段访问运行时验证
 * @note 运行时用例
 */
class InstanceAsync059 {
  private _val: int = 100
  async getVal(): Promise<int> {
    return this._val
  }
}
function main(): void {
  let obj: InstanceAsync059 = new InstanceAsync059()
  console.log("verified")
}
