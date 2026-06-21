/**
 * @id TYP_03_19_029_RUNTIME_UNION_COMMON_MEMBER
 * @expect runtime
 * @section 3.19.2
 * @design 联合类型共同成员运行时验证
 * @note 运行时用例：验证共同字段和方法在运行时正确工作
 */
class Cat29 {
  n: number = 1
  foo(): string { return "cat" }
}

class Dog29 {
  n: number = 2
  foo(): string { return "dog" }
}

function main(): void {
  let u: Cat29 | Dog29 = new Cat29()
  if (u.n != 1) {
    throw new Error("u.n should be 1")
  }
  if (u.foo() != "cat") {
    throw new Error("u.foo() should be 'cat'")
  }

  u = new Dog29()
  if (u.n != 2) {
    throw new Error("u.n should be 2")
  }
  if (u.foo() != "dog") {
    throw new Error("u.foo() should be 'dog'")
  }

  console.log("verified")
}