/**
 * @id CON_06_04_01_022_RUNTIME_ZERO_WIDENING
 * @expect runtime
 * @section 6.4.1
 * @design 零值 widening: 各类零值的 widening 应保持为 0
 * @note 运行时用例：实际执行验证零值 widening
 */
function main(): void {
  let b: byte = 0
  let iFromByte: int = b
  if (iFromByte != 0) { throw new Error("byte 0→int") }

  let s: short = 0
  let iFromShort: int = s
  if (iFromShort != 0) { throw new Error("short 0→int") }

  let i: int = 0
  let l: long = i
  if (l != 0) { throw new Error("int 0→long") }
  let d: double = i
  if (d != 0.0) { throw new Error("int 0→double") }

  console.log("Zero widening verified")
}
