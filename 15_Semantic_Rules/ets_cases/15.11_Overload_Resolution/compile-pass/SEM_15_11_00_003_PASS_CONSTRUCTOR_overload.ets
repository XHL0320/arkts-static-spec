/*
 * @id SEM_15_11_00_003_PASS_CONSTRUCTOR_overload
 * @expect compile-pass
 * @section 15.11.6
 * @design 规范 15.11.6：类的构造函数重载集包含隐式重载的构造函数
 * @note 测试构造函数重载解析
 */

// 测试构造函数重载解析
class Person {
  name: string
  age: number
  
  // 构造函数重载
  constructor(name: string) {
    this.name = name
    this.age = 0
  }
  
  constructor(name: string, age: number) {
    this.name = name
    this.age = age
  }
  
  getInfo(): string {
    return this.name + " (" + this.age + ")"
  }
}

function test_constructor_overload(): void {
  // 重载解析：选择第一个匹配的构造函数
  let p1: Person = new Person("Alice")  // 调用 constructor(name: string)
  console.log(p1.getInfo())  // 输出: Alice (0)
  
  let p2: Person = new Person("Bob", 30)  // 调用 constructor(name: string, age: number)
  console.log(p2.getInfo())  // 输出: Bob (30)
  
  console.log("Constructor overload test passed")
}
