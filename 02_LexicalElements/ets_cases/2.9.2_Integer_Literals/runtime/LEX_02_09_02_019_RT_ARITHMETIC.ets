/**
 * @id LEX_02_09_02_019_RT_ARITHMETIC
 * @expect runtime
 * @section 2.9.2
 * @design 整数运算验证
 * @note runtime 用例：验证整数运算正确性
 */

function main(): void {
  // 验证整数运算
  let a: int = 100
  let b: int = 200
  let sum: int = a + b

  if (sum !== 300) { throw new Error("addition mismatch") }

  // 验证 long 运算
  let big1: long = 2147483648
  let big2: long = 2147483648
  let bigSum: long = big1 + big2

  if (bigSum !== 4294967296) { throw new Error("long addition mismatch") }
}
