/**
 * @id LEX_02_04_021_FAIL_LF_IN_DOUBLE_STRING
 * @expect compile-fail
 * @section 2.4
 * @design 双引号字符串内含未转义 LF 应编译失败
 * @note 反向用例：双引号字符串不可跨行
 */
function testLfInDoubleString(): void {
  let s: string = "hello
world"
}
