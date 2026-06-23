/**
 * @id CLS_09_09_008_RUNTIME_CONSTRUCTOR_INIT_FIELDS
 * @expect runtime
 * @section 9.9
 * @design 构造器初始化字段运行时验证
 * @note 运行时用例
 */
class Person008 {
  private _name: string
  private _age: int
  constructor(name: string, age: int) {
    this._name = name
    this._age = age
  }
  greet(): string {
    return this._name
  }
}
function main(): void {
  let p: Person008 = new Person008("Alice", 30)
  console.log("verified")
}
