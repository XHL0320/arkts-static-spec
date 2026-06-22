/**
 * @id CON_06_04_03_003_PASS_INT_ENUM_TO_DOUBLE
 * @expect compile-pass
 * @section 6.4.3
 * @design int 基类型枚举→double (更大浮点类型)
 * @note 正向用例：枚举可转换为浮点类型
 */
enum E { A, B, C }

function testIntEnumToDouble(): void {
  let e: E = E.C
  let v: double = e
}
