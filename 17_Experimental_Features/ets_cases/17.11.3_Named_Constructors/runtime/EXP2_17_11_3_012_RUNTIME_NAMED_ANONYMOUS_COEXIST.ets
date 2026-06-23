/**
 * @id EXP2_17_11_3_012_RUNTIME_NAMED_ANONYMOUS_COEXIST
 * @expect runtime
 * @section 17.11.3
 * @design 匿名构造函数与命名构造函数共存并正确解析：验证匿名和命名构造函数分别正确解析
 * @note 运行时用例：验证 new ClassName() 与 new ClassName(args) 分别调用不同的构造函数
 */
class User {
  name: string
  age: int

  constructor() {
    this.name = "unknown"
    this.age = 0
  }
  constructor WithName(n: string) {
    this.name = n
    this.age = 0
  }
  constructor Full(nameStr: string, ageVal: int) {
    this.name = nameStr
    this.age = ageVal
  }
  overload constructor { WithName, Full }
}

function main(): void {
  let u1: User = new User()
  if (u1.name != "unknown") {
    throw new Error("assertion failed: default name should be 'unknown'")
  }
  if (u1.age != 0) {
    throw new Error("assertion failed: default age should be 0")
  }

  let u2: User = new User("Alice")
  if (u2.name != "Alice") {
    throw new Error("assertion failed: u2 name should be 'Alice'")
  }
  if (u2.age != 0) {
    throw new Error("assertion failed: u2 age should be 0")
  }

  let u3: User = new User("Bob", 30)
  if (u3.name != "Bob") {
    throw new Error("assertion failed: u3 name should be 'Bob'")
  }
  if (u3.age != 30) {
    throw new Error("assertion failed: u3 age should be 30")
  }

  console.log("verified")
}
