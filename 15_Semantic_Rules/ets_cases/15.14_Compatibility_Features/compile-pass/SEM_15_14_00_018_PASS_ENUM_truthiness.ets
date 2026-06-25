/*
 * @id SEM_15_14_00_018_PASS_ENUM_truthiness
 * @expect compile-pass
 * @section 15.14
 * @design 规范 15.14.1：枚举类型的真值检查
 * @note 测试枚举类型的真值检查
 */

// 测试枚举类型的真值检查
enum Color {
  Red,
  Green,
  Blue
}

function test_enum_truthiness(): void {
  let c: Color = Color.Red
  
  // 枚举值的真值检查
  if (c) {
    console.log("Color is truthy: " + c)  // 输出: 0 (Color.Red 的值)
  }
  
  console.log("Enum truthiness test passed")
}