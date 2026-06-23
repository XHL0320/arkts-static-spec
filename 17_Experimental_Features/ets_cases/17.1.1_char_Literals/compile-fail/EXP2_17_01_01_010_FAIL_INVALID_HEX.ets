/**
 * @id EXP2_17_01_01_010_FAIL_INVALID_HEX
 * @expect compile-fail
 * @section 17.1.1
 * @design 非法十六进制转义 c'\xGG' 应产生编译时错误（G 不是有效十六进制数字）
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testInvalidHexFail(): void {
  let invalidHex: char = c'\xGG'
  console.log(invalidHex)
}
