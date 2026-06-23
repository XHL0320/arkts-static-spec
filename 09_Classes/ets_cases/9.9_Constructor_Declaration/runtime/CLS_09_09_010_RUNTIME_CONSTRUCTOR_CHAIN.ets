/**
 * @id CLS_09_09_010_RUNTIME_CONSTRUCTOR_CHAIN
 * @expect runtime
 * @section 9.9
 * @design 父子类多层构造器链运行时验证
 * @note 运行时用例
 */
class Animal010 {
  protected _name: string
  constructor(name: string) {
    this._name = name
  }
}
class Dog010 extends Animal010 {
  private _breed: string
  constructor(name: string, breed: string) {
    super(name)
    this._breed = breed
  }
}
function main(): void {
  let d: Dog010 = new Dog010("Buddy", "Labrador")
  console.log("verified")
}
