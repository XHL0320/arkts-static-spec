/**
 * @id CON_06_04_03_001_PASS_INT_ENUM_TO_INT
 * @expect compile-pass
 * @section 6.4.3
 * @design int 基类型枚举→int: IntegerEnum→int 同基类型
 * @note 正向用例：与 spec 示例一致
 */
enum IntegerEnum { a, b, c }

function testIntEnumToInt(): void {
  let e: IntegerEnum = IntegerEnum.b
  let v: int = e
}
