/**
 * @id CLS_09_07_005_PASS_ABSTRACT_METHOD_IMPL
 * @expect compile-pass
 * @section 9.7.3
 * @design 抽象方法声明与实现：abstract类中声明abstract方法，非abstract子类提供实现
 * @note 正向用例：抽象方法在abstract类中声明，由非abstract子类实现
 */
abstract class Animal005 {
  abstract makeSound(): string

  // Concrete method in abstract class
  sleep(): string {
    return "Zzz"
  }
}

class Dog005 extends Animal005 {
  makeSound(): string {
    return "Woof"
  }
}

class Cat005 extends Animal005 {
  makeSound(): string {
    return "Meow"
  }
}

abstract class Bird005 extends Animal005 {
  // Bird remains abstract - does not implement makeSound
  abstract fly(): void
}

class Sparrow005 extends Bird005 {
  makeSound(): string {
    return "Chirp"
  }

  fly(): void {
    let s: string = this.makeSound()
  }
}

function testAbstractMethods(): void {
  let d: Dog005 = new Dog005()
  let sound: string = d.makeSound()
  let sleepMsg: string = d.sleep()

  let s: Sparrow005 = new Sparrow005()
  s.fly()
}
