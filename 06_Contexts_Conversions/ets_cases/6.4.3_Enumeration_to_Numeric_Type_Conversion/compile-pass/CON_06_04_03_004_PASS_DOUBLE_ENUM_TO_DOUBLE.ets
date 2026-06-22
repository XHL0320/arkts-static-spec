/**
 * @id CON_06_04_03_004_PASS_DOUBLE_ENUM_TO_DOUBLE
 * @expect compile-pass
 * @section 6.4.3
 * @design double 基类型枚举→double: DoubleEnum→double 同基类型
 * @note 正向用例：与 spec 的双精度枚举示例一致
 */
enum DoubleEnum: double { a = 1.0, b = 2.0, c = 3.14 }

function testDoubleEnumToDouble(): void {
  let e: DoubleEnum = DoubleEnum.a
  let v: double = e
}
