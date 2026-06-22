/**
 * @id CON_06_04_04_007_FAIL_STRING_ENUM_TO_INT
 * @expect compile-fail
 * @section 6.4.4
 * @design string 基类型枚举→int: 这是 Enumeration to Numeric 的方向，不成立
 * @note 反向用例：string 枚举不能转为 int
 */
enum StrEnum { X = "x", Y = "y" }

function testStringEnumToIntFail(): void {
  let e: StrEnum = StrEnum.X
  let v: int = e
}
