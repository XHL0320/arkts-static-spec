/**
 * @id CON_06_04_03_002_PASS_INT_ENUM_TO_LONG
 * @expect compile-pass
 * @section 6.4.3
 * @design int 基类型枚举→long (更大数值类型)
 * @note 正向用例：枚举可转换为更大的数值类型
 */
enum IntEnum { X, Y, Z }

function testIntEnumToLong(): void {
  let e: IntEnum = IntEnum.Y
  let v: long = e
}
