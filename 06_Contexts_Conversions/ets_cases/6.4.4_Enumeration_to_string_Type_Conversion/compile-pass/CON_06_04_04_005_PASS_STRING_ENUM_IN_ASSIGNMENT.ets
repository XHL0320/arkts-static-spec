/**
 * @id CON_06_04_04_005_PASS_STRING_ENUM_IN_ASSIGNMENT
 * @expect compile-pass
 * @section 6.4.4
 * @design string 枚举在赋值上下文中: 变量赋值时转换
 * @note 正向用例：赋值语句中的 string enum 转换
 */
enum Mode { Read = "read", Write = "write" }

function testStringEnumInAssignment(): void {
  let s: string = "init"
  let e: Mode = Mode.Read
  s = e

  let u: string | int = 0
  u = e
}
