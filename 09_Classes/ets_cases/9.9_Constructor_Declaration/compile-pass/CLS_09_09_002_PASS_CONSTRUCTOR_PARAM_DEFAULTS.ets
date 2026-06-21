/**
 * @id CLS_09_09_002_PASS_CONSTRUCTOR_PARAM_DEFAULTS
 * @expect compile-pass
 * @section 9.9
 * @design 构造器参数默认值语法
 * @note 正向用例：构造器参数可含默认值
 */
class Config002 {
  private _host: string
  private _port: int
  constructor(host: string = "localhost", port: int = 8080) {
    this._host = host
    this._port = port
  }
}
class TestConfig002 extends Config002 {
  constructor() {
    super()
  }
}
