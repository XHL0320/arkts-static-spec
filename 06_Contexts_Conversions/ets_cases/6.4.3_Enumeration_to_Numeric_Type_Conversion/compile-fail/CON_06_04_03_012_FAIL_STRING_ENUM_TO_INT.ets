/**
 * @id CON_06_04_03_012_FAIL_STRING_ENUM_TO_INT
 * @expect compile-fail
 * @section 6.4.3
 * @design string 基类型枚举→int: 非数值基类型无此转换，应编译失败
 * @note 反向用例：string 枚举不能转为数值类型
 */
enum Color { Red = "red", Blue = "blue" }

function testStringEnumToIntFail(): void {
  let c: Color = Color.Red
  let v: int = c
}
