/**
 * @id CON_06_04_03_013_FAIL_INT_ENUM_TO_FLOAT
 * @expect compile-fail
 * @section 6.4.3
 * @design int 基类型枚举→short (更小类型), 应编译失败
 * @note 反向用例：枚举只能转为 ≥ 基类型的数值类型
 */
enum E2 { X, Y, Z }

function testIntEnumToShortFail(): void {
  let e: E2 = E2.Y
  let v: short = e
}
