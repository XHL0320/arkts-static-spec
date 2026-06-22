/**
 * @id CON_06_04_03_010_FAIL_INT_ENUM_TO_BYTE
 * @expect compile-fail
 * @section 6.4.3
 * @design int 基类型枚举→byte (更小类型), 应编译失败
 * @note 反向用例：枚举只能转换为 ≥ 基类型的数值类型
 */
enum E { A, B, C }

function testIntEnumToByteFail(): void {
  let e: E = E.B
  let v: byte = e
}
