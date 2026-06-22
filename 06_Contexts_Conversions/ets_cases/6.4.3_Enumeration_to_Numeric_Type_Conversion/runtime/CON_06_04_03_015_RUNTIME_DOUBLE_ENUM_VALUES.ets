/**
 * @id CON_06_04_03_015_RUNTIME_DOUBLE_ENUM_VALUES
 * @expect runtime
 * @section 6.4.3
 * @design double 基类型枚举→double 运行时值保留
 * @note 运行时用例：验证双精度枚举转换
 */
enum DoubleEnum: double { a = 1.0, b = 2.0, c = 3.14 }

function main(): void {
  let e: DoubleEnum = DoubleEnum.a
  let v: double = e
  if (v != 1.0) { throw new Error("assertion: double enum→double should be 1.0") }

  let e2: DoubleEnum = DoubleEnum.c
  let v2: double = e2
  if (v2 != 3.14) { throw new Error("assertion: double enum→double should be 3.14, got " + v2) }

  console.log("Double enum values verified")
}
