/**
 * @id LEX_02_07_036_PASS_SOFT_KW_GET_SET
 * @expect compile-pass
 * @section 2.7
 * @design 软关键字: get/set 作访问器
 * @note 正向用例：get/set 访问器
 */
class Person036 {
  private _name: string = ""

  get name(): string {
    return this._name
  }

  set name(value: string) {
    this._name = value
  }
}

function test036(): void {
  let p: Person036 = new Person036()
  p.name = "Alice"
  let n: string = p.name
}
