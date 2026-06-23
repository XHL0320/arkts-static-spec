/**
 * @id EXP_07_02_01_018_FAIL_TYPE_MISMATCH
 * @expect compile-fail
 * @section 7.2.1
 * @design 表达式类型与 target type 不兼容，应编译时错误
 * @note 反向用例：验证类型不匹配时的编译错误
 */
function testTypeMismatch(): void {
  let a: int = "hello"
}
