/**
 * @id EXP_07_23_01_008_PASS_COMMUTATIVE_ASSOCIATIVE_DECL
 * @expect compile-pass
 * @section 7.23.1
 * @design 验证乘法结合律和交换律表达式编译通过。
 *         乘法是可交换的（无副作用时），
 *         整数乘法在同类型时满足结合律，
 *         bigint 乘法满足结合律。
 * @note 正向用例：验证复杂的结合/交换乘法表达式编译通过
 */
function main(): void {
  let a: int = 2
  let b: int = 3
  let c: int = 4
  let x: bigint = 10n
  let y: bigint = 20n
  let z: bigint = 30n

  // 交换律：a * b == b * a
  let r1 = a * b
  let r2 = b * a

  // 整数结合律：(a * b) * c == a * (b * c)
  let r3 = (a * b) * c
  let r4 = a * (b * c)

  // bigint 结合律：(x * y) * z == x * (y * z)
  let r5 = (x * y) * z
  let r6 = x * (y * z)

  // long 结合律
  let m: long = 100
  let n: long = 200
  let p: long = 300
  let r7 = (m * n) * p
  let r8 = m * (n * p)

  console.log("verified")
}
main()
