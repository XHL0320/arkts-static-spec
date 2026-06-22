/**
 * @id CON_06_04_016_RUNTIME_WIDENING_VALUES
 * @expect runtime
 * @section 6.4
 * @design Widening Numeric Conversion 运行时值保留: int→long, int→double
 * @note 运行时用例：实际执行验证 widening 后值不变
 */
function main(): void {
  let a: int = 42
  let b: long = a
  if (b != 42) {
    throw new Error("assertion failed: int→long 42 should remain 42")
  }

  let c: int = -10
  let d: double = c
  if (d != -10.0) {
    throw new Error("assertion failed: int→double -10 should be -10.0")
  }

  let e: byte = 100
  let f: int = e
  if (f != 100) {
    throw new Error("assertion failed: byte→int 100 should remain 100")
  }

  console.log("Widening values verified")
}
