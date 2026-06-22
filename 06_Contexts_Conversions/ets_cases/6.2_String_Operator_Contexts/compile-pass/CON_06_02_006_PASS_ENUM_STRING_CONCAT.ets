/**
 * @id CON_06_02_006_PASS_ENUM_STRING_CONCAT
 * @expect compile-pass
 * @section 6.2
 * @design String context: string 值枚举 + string，转换为对应枚举成员的字符串值
 * @note 正向用例：验证该特性编译通过的正确用法
 */
enum Color {
  Red = "red",
  Green = "green",
  Blue = "blue"
}

function testEnumStringConcat(): void {
  let s1: string = "color: " + Color.Red
  let s2: string = Color.Green + " is selected"
  let s3: string = "favorite: " + Color.Blue
}
