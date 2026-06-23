/**
 * @id EXP_07_23_01_036_RUNTIME_BIGINT_ASSOCIATIVE
 * @expect runtime
 * @section 7.23.1
 * @design 验证 bigint 乘法满足结合律 (a*b)*c == a*(b*c)。
 *         spec：Bigint multiplication is associative.
 * @note 运行时用例：bigint 乘法结合律验证
 */
function main(): void {
  let a: bigint = 7n
  let b: bigint = 11n
  let c: bigint = 13n

  // (a * b) * c
  let left: bigint = (a * b) * c
  // a * (b * c)
  let right: bigint = a * (b * c)

  if (left != right) {
    throw new Error("Bigint multiplication not associative: " + left + " != " + right)
  }

  // 验证具体值
  if (left != 1001n) {
    throw new Error("7n * 11n * 13n should be 1001n, got " + left)
  }

  // 大数 bigint 结合律
  let x: bigint = 12345678901234567890n
  let y: bigint = 9876543210987654321n
  let z: bigint = 11111111111111111111n

  let left2: bigint = (x * y) * z
  let right2: bigint = x * (y * z)
  if (left2 != right2) {
    throw new Error("Large bigint multiplication not associative")
  }

  console.log("verified")
}
main()
