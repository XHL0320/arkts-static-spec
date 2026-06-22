/**
 * @id EXP_07_26_007_FAIL_BIGINT_UNSIGNED_RIGHT
 * @expect compile-fail
 * @section 7.26
 * @design 验证bigint类型使用无符号右移(>>>)应产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testShiftFailBigintUnsignedRight(): void {
  let a: bigint = 16n
  let b: bigint = 2n
  let r: bigint = a >>> b  // compile error: bigint does not support >>>
  console.log(r.toString())
}
