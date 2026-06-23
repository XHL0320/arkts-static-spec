/**
 * @id EXP2_17_11_2_005_PASS_FINAL_METHOD_STRING_PARAM
 * @expect compile-pass
 * @section 17.11.2
 * @design final 方法接受字符串字面量类型参数：验证 final 方法可以接受字符串类型参数
 * @note 正向用例：验证 final 方法支持字符串类型参数
 */
class Greeter {
  final greetWithPrefix(prefix: string, name: string): string {
    return prefix + " " + name
  }

  final getDefaultGreeting(): string {
    return "Hello"
  }
}

function testFinalMethodStringParam(): void {
  let g: Greeter = new Greeter()
  let msg: string = g.greetWithPrefix("Mr.", "Smith")
  console.log(msg)
  let def: string = g.getDefaultGreeting()
  console.log(def)
}
