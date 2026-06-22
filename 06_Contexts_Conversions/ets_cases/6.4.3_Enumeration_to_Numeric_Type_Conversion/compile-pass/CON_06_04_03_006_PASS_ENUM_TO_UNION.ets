/**
 * @id CON_06_04_03_006_PASS_ENUM_TO_UNION
 * @expect compile-pass
 * @section 6.4.3
 * @design 枚举→联合类型: int-enum→int|long (int相等, long更大)
 * @note 正向用例：枚举转换为含基类型的联合
 */
enum E1 { One, Two, Three }

function testEnumToUnion(): void {
  let e: E1 = E1.Two
  let u: int | long = e
}
