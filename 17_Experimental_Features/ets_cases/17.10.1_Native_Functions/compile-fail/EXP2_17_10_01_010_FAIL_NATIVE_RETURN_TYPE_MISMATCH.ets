/**
 * @id EXP2_17_10_01_010_FAIL_NATIVE_RETURN_TYPE_MISMATCH
 * @expect compile-fail
 * @section 17.10.1
 * @design 原生函数返回类型不匹配：验证将 native function 返回值赋给不兼容类型产生编译错误 ESE0318
 * @note 反向用例：验证该场景应产生编译时错误 - Type 'Int' cannot be assigned to type 'String'
 */
native function getNumber(): int
function testTypeMismatch(): void {
  let s: string = getNumber()
  console.log(s)
}
