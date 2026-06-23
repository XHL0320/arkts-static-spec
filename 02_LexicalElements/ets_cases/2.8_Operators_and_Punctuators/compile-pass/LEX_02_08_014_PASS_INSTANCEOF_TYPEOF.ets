/**
 * @id LEX_02_08_014_PASS_INSTANCEOF_TYPEOF
 * @expect compile-pass
 * @section 2.8
 * @design instanceof 与 typeof 作为运算符的词法识别
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class Animal {}
class Dog extends Animal {}
function testInstanceofTypeof(): void {
  let pet: Animal = new Dog()
  let r1: boolean = pet instanceof Dog
  let r2: boolean = pet instanceof Animal
  let n: number = 42
  let s: string = "hello"
  let t1: string = typeof n
  let t2: string = typeof s
}
