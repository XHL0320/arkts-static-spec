/**
 * @id CLS_09_07_010_PASS_METHOD_BODY_VALID
 * @expect compile-pass
 * @section 9.7.7
 * @design 合法的方法体形式：block体实现、void方法无return、条件分支均有return、abstract方法无体
 * @note 正向用例：各种合法方法体声明
 */
abstract class Calculator010 {
  abstract compute(a: int, b: int): int

  // Abstract method with no body
  abstract name(): string

  // Abstract method with semicolon
  abstract version(): int
}

class Adder010 extends Calculator010 {
  override compute(a: int, b: int): int {
    return a + b
  }

  override name(): string {
    return "Adder"
  }

  override version(): int {
    return 1
  }
}

class Formatter010 {
  // void method with no return statement - valid
  log(message: string): void {
    let prefix: string = "[LOG] "
    let full: string = prefix + message
  }

  // void method with conditional empty return - valid
  printIf(flag: boolean): void {
    if (!flag) {
      return
    }
    let msg: string = "printing"
  }

  // All execution paths have return statement
  max(a: int, b: int): int {
    if (a > b) {
      return a
    }
    return b
  }
}

function testValidMethodBodies(): void {
  let adder: Adder010 = new Adder010()
  let result: int = adder.compute(3, 5)
  let nm: string = adder.name()
  let ver: int = adder.version()

  let fmt: Formatter010 = new Formatter010()
  fmt.log("test")
  let m: int = fmt.max(10, 20)
}
