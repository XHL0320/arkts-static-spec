/**
 * @id CON_06_03_015_FAIL_STRING_ENUM_ARITHMETIC
 * @expect compile-fail
 * @section 6.3
 * @design string 基类型枚举参与算术: string enum + int, 非数值枚举不可用于数值上下文
 * @note 反向用例：string 枚举用于数值上下文应编译失败
 */
enum Color {
  Red = "red",
  Blue = "blue"
}

function testStringEnumArithmeticFail(): void {
  let r: int = Color.Red + 1
}
