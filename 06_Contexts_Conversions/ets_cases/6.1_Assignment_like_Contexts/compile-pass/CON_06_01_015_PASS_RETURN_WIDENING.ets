/**
 * @id CON_06_01_015_PASS_RETURN_WIDENING
 * @expect compile-pass
 * @section 6.1
 * @design Return context: return 表达式利用隐式 widening 转换（int -> number, int -> long）
 * @note 正向用例：验证返回上下文允许使用隐式转换的用法
 */
function returnAsNumber(): number {
  let intVal: int = 42
  return intVal
}

function returnAsLong(): long {
  return 100
}

function returnAsDouble(): double {
  return 7
}

function testReturnWidening(): void {
  let n: number = returnAsNumber()
  let l: long = returnAsLong()
  let d: double = returnAsDouble()
}
