/**
 * @id EXP_07_26_008_FAIL_BIGINT_NUMERIC_MIXED
 * @expect compile-fail
 * @section 7.26
 * @design 验证bigint与numeric类型混合作为移位操作数时产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testShiftFailBigintNumericMixed(): void {
  let a: bigint = 16n
  let b: int = 2
  let r: bigint = a << b  // compile error: cannot mix bigint and numeric in shift
  console.log(r.toString())
}
