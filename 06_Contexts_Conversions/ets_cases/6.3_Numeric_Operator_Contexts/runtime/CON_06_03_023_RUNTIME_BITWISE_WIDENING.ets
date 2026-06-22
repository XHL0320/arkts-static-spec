/**
 * @id CON_06_03_023_RUNTIME_BITWISE_WIDENING
 * @expect runtime
 * @section 6.3
 * @design 位运算 widening 运行时行为: int&long, int|long, int^long
 * @note 运行时用例：实际执行验证 widening 位运算结果
 */
function main(): void {
  let a: int = 0xFF
  let b: long = 0x0F
  let r1: long = a & b
  if (r1 != 0x0F) {
    throw new Error("assertion failed: 0xFF & 0x0F should be 0x0F")
  }

  let r2: long = a | b
  if (r2 != 0xFF) {
    throw new Error("assertion failed: 0xFF | 0x0F should be 0xFF")
  }

  let r3: long = a ^ b
  if (r3 != 0xF0) {
    throw new Error("assertion failed: 0xFF ^ 0x0F should be 0xF0")
  }

  console.log("Bitwise widening verified")
}
