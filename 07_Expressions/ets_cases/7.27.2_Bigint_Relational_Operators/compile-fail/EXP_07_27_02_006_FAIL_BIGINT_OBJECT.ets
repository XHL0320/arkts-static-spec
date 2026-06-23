/**
 * @id EXP_07_27_02_006_FAIL_BIGINT_OBJECT
 * @expect compile-fail
 * @section 7.27.2
 * @design 验证bigint类型与Object类型操作数不能用于关系运算符，应产生编译时错误（bigint无法转换为Object进行关系比较）
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testBigintObject(): void {
  let bi: bigint = 42n
  let obj: Object = {x: 1}
  let r: boolean = bi <= obj  // compile-fail: bigint <= Object, incompatible
  console.log(r.toString())
}
