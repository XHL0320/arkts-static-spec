/**
 * @id CON_06_01_022_FAIL_METHOD_ARGUMENT_MISMATCH
 * @expect compile-fail
 * @section 6.1
 * @design Call context: 方法调用实参类型(string)与形参类型(int)不匹配且无隐式转换
 * @note 反向用例：验证该场景应产生编译时错误
 */
class Processor {
  process(count: int): void {
    let x: int = count
  }
}

function testMethodArgumentMismatchFail(): void {
  let proc: Processor = new Processor()
  proc.process("invalid")
}
