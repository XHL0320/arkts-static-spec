/**
 * @id EXP_07_26_020_RUNTIME_BIGINT_SHIFT_LARGE
 * @expect runtime
 * @section 7.26
 * @design 运行时验证bigint大值移位：bigint无位移距离掩码限制，可以任意精度移位
 * @note 运行时用例：实际执行验证bigint移位不受5/6位掩码限制，支持大位移距离
 */
function main(): void {
  // bigint左移：1n << 100n = 2^100
  let one: bigint = 1n
  let shift100: bigint = 100n
  let r1: bigint = one << shift100

  // 1n << 100n = 1267650600228229401496703205376n
  let expected100: bigint = 1267650600228229401496703205376n
  if (r1 != expected100) {
    throw new Error("assertion failed: 1n << 100n expected large value, got " + r1)
  }

  // bigint不受int的5位掩码限制：1n << 32n != 1n (不像int: 1 << 32 = 1)
  let r2: bigint = one << 32n
  let expected32: bigint = 4294967296n  // 2^32
  if (r2 != expected32) {
    throw new Error("assertion failed: 1n << 32n expected 4294967296, got " + r2)
  }

  // bigint不受long的6位掩码限制：1n << 64n != 1n (不像long: 1 << 64 = 1)
  let r3: bigint = one << 64n
  let expected64: bigint = 18446744073709551616n  // 2^64
  if (r3 != expected64) {
    throw new Error("assertion failed: 1n << 64n expected 18446744073709551616, got " + r3)
  }

  // bigint带符号右移大值
  let large: bigint = 1267650600228229401496703205376n  // 2^100
  let r4: bigint = large >> 50n
  let expected50: bigint = 1125899906842624n  // 2^50
  if (r4 != expected50) {
    throw new Error("assertion failed: 2^100 >> 50 expected 2^50, got " + r4)
  }

  // bigint负值右移（符号扩展）
  let neg: bigint = -1024n
  let r5: bigint = neg >> 3n
  if (r5 != -128n) {
    throw new Error("assertion failed: -1024n >> 3 expected -128, got " + r5)
  }

  console.log("verified")
}
