/**
 * @id EXP_07_27_02_004_FAIL_BIGINT_STRING
 * @expect compile-fail
 * @section 7.27.2
 * @design 验证bigint类型与string类型操作数不能用于关系运算符，应产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testBigintString(): void {
  let bi: bigint = 100n
  let s: string = "hello"
  let r: boolean = bi < s  // compile-fail: bigint < string, incompatible
  console.log(r.toString())
}
