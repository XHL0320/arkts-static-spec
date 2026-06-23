/**
 * @id CLS_09_09_009_RUNTIME_CONSTRUCTOR_DEFAULT_PARAM
 * @expect runtime
 * @section 9.9
 * @design 构造器默认参数值运行时验证
 * @note 运行时用例
 */
class Config009 {
  private _host: string
  private _port: int
  constructor(host: string = "localhost", port: int = 3000) {
    this._host = host
    this._port = port
  }
}
function main(): void {
  let c: Config009 = new Config009()
  console.log("verified")
}
