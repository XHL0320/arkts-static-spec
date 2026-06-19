/**
 * @id CLS_09_07_020_RUNTIME_ABSTRACT_DISPATCH
 * @expect runtime
 * @section 9.7.3
 * @design 抽象方法通过基类引用分派到子类实现
 * @note 运行时用例：验证多态分派
 */
abstract class Animal { abstract speak(): string }
class Dog extends Animal { speak(): string { return "woof" } }
class Cat extends Animal { speak(): string { return "meow" } }
function main(): void {
  let a1: Animal = new Dog()
  let a2: Animal = new Cat()
  if (a1.speak() != "woof") { throw new Error("dog should woof") }
  if (a2.speak() != "meow") { throw new Error("cat should meow") }
  console.log("verified")
}
