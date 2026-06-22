/**
 * @id CON_06_03_022_RUNTIME_SHIFT_WIDENING
 * @expect runtime
 * @section 6.3
 * @design 移位运算 widening 运行时行为: int<<long, int>>byte
 * @note 运行时用例：实际执行验证 widening 移位结果
 */
function main(): void {
  let a: int = 1
  let b: long = 3
  let r1: long = a << b
  if (r1 != 8) {
    throw new Error("assertion failed: 1 << 3 should be 8, got " + r1)
  }

  let r2: long = a >> b
  if (r2 != 0) {
    throw new Error("assertion failed: 1 >> 3 should be 0")
  }

  let c: int = 16
  let d: byte = 2
  let r3: int = c >> d
  if (r3 != 4) {
    throw new Error("assertion failed: 16 >> 2 should be 4")
  }

  let r4: int = c << d
  if (r4 != 64) {
    throw new Error("assertion failed: 16 << 2 should be 64")
  }

  console.log("Shift widening verified")
}
