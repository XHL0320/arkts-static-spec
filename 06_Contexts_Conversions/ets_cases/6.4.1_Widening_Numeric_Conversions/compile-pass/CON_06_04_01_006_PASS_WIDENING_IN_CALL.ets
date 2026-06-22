/**
 * @id CON_06_04_01_006_PASS_WIDENING_IN_CALL
 * @expect compile-pass
 * @section 6.4.1
 * @design Widening 在调用上下文中: byte/short/int→long, int/float→double
 * @note 正向用例：验证 spec 示例中的 widening 调用
 */
function takeLong(val: long): void {}
function takeDouble(val: double): void {}

function testWideningInCall(): void {
  let b: byte = 1
  let s: short = 2
  let i: int = 3

  takeLong(b)
  takeLong(s)
  takeLong(i)

  let f: float = i
  takeDouble(f)
}
