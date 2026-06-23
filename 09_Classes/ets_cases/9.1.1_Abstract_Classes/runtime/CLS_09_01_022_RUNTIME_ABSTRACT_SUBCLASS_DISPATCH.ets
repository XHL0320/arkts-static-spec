/**
 * @id CLS_09_01_022_RUNTIME_ABSTRACT_SUBCLASS_DISPATCH
 * @expect runtime
 * @section 9.1.1
 * @design 通过非抽象子类实例化抽象类的继承链
 * @note 运行时用例：验证抽象类构造器执行 + 子类方法派发
 */
abstract class AbsAnimal {
  name: string
  constructor(n: string) {
    this.name = n
  }
  abstract sound(): string
  describe(): string {
    return this.name + " says " + this.sound()
  }
}
class Dog extends AbsAnimal {
  constructor() {
    super("Dog")
  }
  sound(): string {
    return "bark"
  }
}

function main(): void {
  let d = new Dog()
  if (d.name != "Dog") {
    throw new Error("Dog.name should be 'Dog'")
  }
  if (d.sound() != "bark") {
    throw new Error("Dog.sound() should be 'bark'")
  }
  if (d.describe() != "Dog says bark") {
    throw new Error("Dog.describe() should be 'Dog says bark'")
  }
  console.log("Abstract subclass dispatch verified")
}

