/**
 * @id EXP2_17_16_002_PASS_INSTANCEOF_CLASS
 * @expect compile-pass
 * @section 17.16
 * @design 使用 instanceof 检查用户自定义类的继承层次
 * @note 正向用例：验证 instanceof 对用户自定义类层次结构的编译通过
 */
class Animal {
  name: string = "animal"
}
class Dog extends Animal {
  bark(): void { console.log("woof") }
}
class Cat extends Animal {
  meow(): void { console.log("meow") }
}

function testInstanceofClass(): void {
  let a: Animal = new Dog()
  let isDog: boolean = a instanceof Dog
  let isCat: boolean = a instanceof Cat
  let isAnimal: boolean = a instanceof Animal
  console.log("isDog=" + isDog + " isCat=" + isCat + " isAnimal=" + isAnimal)
}
