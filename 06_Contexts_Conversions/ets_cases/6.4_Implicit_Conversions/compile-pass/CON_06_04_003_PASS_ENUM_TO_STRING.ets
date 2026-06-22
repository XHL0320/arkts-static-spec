/**
 * @id CON_06_04_003_PASS_ENUM_TO_STRING
 * @expect compile-pass
 * @section 6.4
 * @design Enumeration to string Type Conversion: string 值枚举在 string 上下文中隐式转换
 * @note 正向用例：验证 string 枚举到 string 的隐式转换
 */
enum Label {
  Start = "start",
  Stop = "stop"
}

function testEnumToString(): void {
  let s1: string = "status: " + Label.Start
  let s2: string = Label.Stop + " pressed"
}
