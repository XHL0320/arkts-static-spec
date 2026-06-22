/**
 * @id CON_06_04_04_003_PASS_STRING_ENUM_IN_CALL
 * @expect compile-pass
 * @section 6.4.4
 * @design string 枚举在调用上下文中: 枚举→string 形参
 * @note 正向用例：string 枚举作为实参
 */
enum Label { Start = "start", Stop = "stop" }

function takeString(s: string): void {}
function takeUnion(u: string | int): void {}

function testStringEnumInCall(): void {
  let e: Label = Label.Start
  takeString(e)
  takeUnion(e)
}
