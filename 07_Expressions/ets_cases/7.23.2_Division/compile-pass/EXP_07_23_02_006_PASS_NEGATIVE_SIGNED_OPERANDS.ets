/**
 * @id EXP_07_23_02_006_PASS_NEGATIVE_SIGNED_OPERANDS
 * @expect compile-pass
 * @section 7.23.2
 * @design 验证负数/有符号操作数除法编译通过。
 *         除法运算符支持所有数值类型和 bigint 的负数操作数。
 * @note 正向用例：验证负数/有符号操作数除法编译通过
 */
function main(): void {
  let a: int = -10
  let b: int = 3
  let c: long = -100
  let d: int = 20

  // int 负数除法
  let r1: int = a / b

  // long 负数除法
  let r2: long = c / d

  // float 负数除法
  let e: float = Double.toFloat(-7.5)
  let f: float = Double.toFloat(2.5)
  let r3: float = e / f

  // double 负数除法
  let g: double = -15.0
  let h: double = 4.0
  let r4: double = g / h

  // bigint 负数除法
  let i: bigint = -100n
  let j: bigint = 7n
  let r5: bigint = i / j

  console.log("verified")
}
main()
