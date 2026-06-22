/**
 * @id CON_06_04_03_005_PASS_ENUM_TO_NUMBER
 * @expect compile-pass
 * @section 6.4.3
 * @design int 基类型枚举→number (更大类型)
 * @note 正向用例：与 spec 的 number_value 示例一致
 */
enum NumEnum { P, Q, R }

function testEnumToNumber(): void {
  let e: NumEnum = NumEnum.Q
  let v: number = e
}
