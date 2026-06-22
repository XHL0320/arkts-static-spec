/**
 * @id CON_06_04_019_RUNTIME_WIDENING_TO_UNION
 * @expect runtime
 * @section 6.4
 * @design Widening to Union Type 运行时值保留
 * @note 运行时用例：实际执行验证 widening 到联合类型的值不变
 */
function main(): void {
  let a: int = 10
  let b: int | long = a
  if (b != 10) {
    throw new Error("assertion failed: int|long should be 10")
  }

  let c: int = 5
  let d: int | double = c
  if (d != 5) {
    throw new Error("assertion failed: int|double should be 5")
  }

  let e: int = 0
  let f: int | long | double = e
  if (f != 0) {
    throw new Error("assertion failed: int|long|double should be 0")
  }

  console.log("Widening to union type verified")
}
