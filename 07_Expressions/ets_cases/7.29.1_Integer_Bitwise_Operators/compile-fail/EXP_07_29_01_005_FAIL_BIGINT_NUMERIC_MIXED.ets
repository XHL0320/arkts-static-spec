/**
 * @id EXP_07_29_01_005_FAIL_BIGINT_NUMERIC_MIXED
 * @expect compile-fail
 * @section 7.29.1
 * @design bigint 与 numeric 混合位运算应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testBigintNumericMixedFail(): void {
  let a: bigint = 0xFFn; let b: int = 0x0F
  let bad: bigint = a & b; console.log(bad.toString())
}
