/**
 * @id CLS_09_08_016_PASS_SETTER_ONLY
 * @expect compile-pass
 * @section 9.8
 * @design 只声明 setter 不声明 getter 的只写属性
 * @note 正向用例：setter-only accessor 提供只写属性，可通过 field access 语法写入但不可读取
 */
class Logger {
  private _lastMessage: string = ""
  set message(m: string) { this._lastMessage = m }
}

class Accumulator {
  private _total: int = 0
  set add(n: int) { this._total = this._total + n }
}

class Configurator {
  private _mode: int = 0
  set mode(m: int) { this._mode = m }
  set debug(d: boolean) { this._mode = 1 }
}

function testSetterOnly(): void {
  let log: Logger = new Logger()
  log.message = "system started"
  let acc: Accumulator = new Accumulator()
  acc.add = 10
  acc.add = 20
  let cfg: Configurator = new Configurator()
  cfg.mode = 2
  cfg.debug = true
}
