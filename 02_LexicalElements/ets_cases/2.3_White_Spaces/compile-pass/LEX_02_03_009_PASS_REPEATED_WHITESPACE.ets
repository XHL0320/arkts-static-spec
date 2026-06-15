/**
 * @id LEX_02_03_009_PASS_REPEATED_WHITESPACE
 * @expect compile-pass
 * @section 2.3
 * @design 重复多个相同空白符等价于单个分隔 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testRepeatedWhitespace(): void {
  let          x:     number   =        1
  let					y:			number		=				2
}
