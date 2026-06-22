/**
 * @id EXP_07_27_02_005_FAIL_BIGINT_BOOLEAN
 * @expect compile-fail
 * @section 7.27.2
 * @design 验证bigint类型与boolean类型操作数不能用于关系运算符，应产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testBigintBoolean(): void {
  let bi: bigint = 1n
  let b: boolean = true
  let r: boolean = bi > b  // compile-fail: bigint > boolean, incompatible
  console.log(r.toString())
}
