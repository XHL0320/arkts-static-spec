/**
 * @id LEX_02_07_022_PASS_HARD_KW_THIS_SUPER_NEW
 * @expect compile-pass
 * @section 2.7
 * @design 硬关键字: this, super, new, constructor
 * @note 正向用例：对象关键字
 */
class Animal022 {
  protected name: string

  constructor(name: string) {
    this.name = name
  }

  speak(): string {
    return this.name
  }
}

class Dog022 extends Animal022 {
  constructor(name: string) {
    super(name)
  }

  override speak(): string {
    return super.speak() + " (dog)"
  }
}

function test022(): void {
  let d: Dog022 = new Dog022("Rex")
  let s: string = d.speak()
}
