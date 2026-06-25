/*
 * @id SEM_15_14_00_020_PASS_BIGINT_truthiness
 * @expect compile-pass
 * @section 15.14
 * @design 规范 15.14.1：bigint 类型的真值检查
 * @note 测试 bigint 类型的真值检查
 */

// 测试 bigint 类型的真值检查
function test_bigint_truthiness(): void {
  // bigint 类型的真值检查
  let b1: bigint = 10n
  if (b1) {
    console.log("BigInt 10n is truthy")  // 输出: BigInt 10n is truthy
  }
  
  let b2: bigint = 0n
  if (!b2) {
    console.log("BigInt 0n is falsy")  // 输出: BigInt 0n is falsy
  }
    
  console.log("BigInt truthiness test passed")
}