/**
 * @id CON_06_04_03_007_PASS_ENUM_IN_CALL
 * @expect compile-pass
 * @section 6.4.3
 * @design 枚举在调用上下文中: 枚举实参→int/long/double 形参
 * @note 正向用例：枚举作为函数实参的转换
 */
function takeInt(v: int): void {}
function takeLong(v: long): void {}
function takeDouble(v: double): void {}

enum E2 { A, B, C }

function testEnumInCall(): void {
  let e: E2 = E2.B
  takeInt(e)
  takeLong(e)
  takeDouble(e)
}
