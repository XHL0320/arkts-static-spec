/**
 * @id EXP2_17_12_020_RUNTIME_DEFAULT_INVOKED
 * @expect runtime
 * @section 17.12
 * @design 接口声明默认方法，类不重写，运行时验证默认方法确实被调用并产生预期输出
 * @note 运行时用例：验证默认方法在运行时的实际调用行为
 */
interface IGreeter {
  greet(): string {
    return "Hello from default"
  }
}

class Person implements IGreeter {
  name: string = "Alice"
}

function main(): void {
  let p: Person = new Person()
  let result: string = p.greet()
  if (result != "Hello from default") {
    throw new Error("FAIL: expected 'Hello from default', got '" + result + "'")
  }
  // 验证可以多次调用
  let result2: string = p.greet()
  if (result2 != "Hello from default") {
    throw new Error("FAIL: second call mismatch")
  }
  console.log("PASS: default method invoked correctly")
}
