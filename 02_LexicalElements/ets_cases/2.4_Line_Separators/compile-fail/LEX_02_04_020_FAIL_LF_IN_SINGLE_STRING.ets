/**
 * @id LEX_02_04_020_FAIL_LF_IN_SINGLE_STRING
 * @expect compile-fail
 * @section 2.4
 * @design 单引号字符串内含未转义 LF 应编译失败
 * @note 反向用例：字符串字面量不可跨行（需用 \n 或模板字符串）
 */
function testLfInSingleString(): void {
  let s: string = 'line1
line2'
}
