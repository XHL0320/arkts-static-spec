/**
 * @id CLS_09_08_002_PASS_GETTER_INFERRED_TYPE
 * @expect compile-pass
 * @section 9.8
 * @design getter 无显式返回类型，由 body 中的 return 语句推断返回类型
 * @note 正向用例：getter 省略返回类型时从 body 推断；setter 正常声明
 */
class Container {
  private _value: int = 0
  // return type is inferred as int
  get value() { return this._value }
  set value(v: int) { this._value = v }
}

class NameHolder {
  private _name: string = ""
  // return type is inferred as string
  get name() { return this._name }
  set name(n: string) { this._name = n }
}

class FlagHolder {
  private _flag: boolean = false
  // return type is inferred as boolean
  get flag() { return this._flag }
  set flag(f: boolean) { this._flag = f }
}

function testInferredType(): void {
  let c: Container = new Container()
  c.value = 42
  let v: int = c.value
  let n: NameHolder = new NameHolder()
  n.name = "arkts"
  let s: string = n.name
  let f: FlagHolder = new FlagHolder()
  f.flag = true
  let b: boolean = f.flag
}
