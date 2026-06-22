/**
 * @id CON_06_01_014_PASS_CALL_WIDENING
 * @expect compile-pass
 * @section 6.1
 * @design Call context: 函数调用实参利用隐式 widening 转换（int -> number, int -> long）
 * @note 正向用例：验证调用上下文允许使用隐式转换的用法
 */
function acceptNumber(n: number): void {
  let x: number = n
}

function acceptLong(l: long): void {
  let x: long = l
}

function acceptDouble(d: double): void {
  let x: double = d
}

function testCallWidening(): void {
  let intVal: int = 42
  acceptNumber(intVal)
  acceptLong(100)
  acceptDouble(3)
}
