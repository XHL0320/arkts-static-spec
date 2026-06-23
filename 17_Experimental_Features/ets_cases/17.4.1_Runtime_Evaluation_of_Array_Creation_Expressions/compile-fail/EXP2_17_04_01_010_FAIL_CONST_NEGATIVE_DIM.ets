/**
 * @id EXP2_17_04_01_010_FAIL_CONST_NEGATIVE_DIM
 * @expect compile-fail
 * @section 17.4.1
 * @design 常量负维度表达式：验证编译期常量负维度产生 compile-time error
 * @note 反向用例：new int[-3] (0) 应在编译时被拒绝
 */
function testConstNegativeDimFail(): void {
  let arr: int[] = new int[-3] (0)
  console.log(arr.length)
}
