/**
 * @id CON_06_04_006_PASS_WIDENING_IN_CALL
 * @expect compile-pass
 * @section 6.4
 * @design Widening 在调用上下文中：int 实参传递给 long/double 形参
 * @note 正向用例：验证 widening 在调用上下文中隐式生效
 */
function takeLong(val: long): void {
  let x: long = val
}

function takeDouble(val: double): void {
  let x: double = val
}

function testWideningInCall(): void {
  let a: int = 42
  takeLong(a)
  takeDouble(a)
}
