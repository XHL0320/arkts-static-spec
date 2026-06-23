/**
 * @id EXP2_17_12_001_PASS_DEFAULT_METHOD_BASIC
 * @expect compile-pass
 * @section 17.12
 * @design 接口中声明带方法体的默认方法，类实现该接口但不重写该方法，验证类实例可调用该默认方法
 * @note 正向用例：验证默认接口方法的基本声明和继承
 */
interface IGreeter {
  greet(): void {
    console.log("Hello from default method")
  }
}

class Person implements IGreeter {
  name: string = "Alice"
}

function main(): void {
  let p: Person = new Person()
  p.greet() // 调用继承的默认方法
}
