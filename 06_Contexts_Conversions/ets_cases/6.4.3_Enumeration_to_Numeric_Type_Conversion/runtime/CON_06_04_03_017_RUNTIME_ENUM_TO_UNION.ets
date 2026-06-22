/**
 * @id CON_06_04_03_017_RUNTIME_ENUM_TO_UNION
 * @expect runtime
 * @section 6.4.3
 * @design 枚举→联合类型的运行时值保留
 * @note 运行时用例：验证枚举→联合转换
 */
enum E { A, B, C }

function main(): void {
  let e: E = E.B
  let u: int | long = e
  if (u != 1) { throw new Error("assertion: enum→int|long should be 1, got " + u) }

  let e2: E = E.C
  let u2: int | double = e2
  if (u2 != 2) { throw new Error("assertion: enum→int|double should be 2") }

  console.log("Enum to union verified")
}
