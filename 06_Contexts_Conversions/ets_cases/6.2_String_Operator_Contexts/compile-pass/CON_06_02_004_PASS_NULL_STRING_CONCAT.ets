/**
 * @id CON_06_02_004_PASS_NULL_STRING_CONCAT
 * @expect compile-pass
 * @section 6.2
 * @design String context: null + string，null 转换为 "null"
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testNullStringConcat(): void {
  let s1: string = "" + null
  let s2: string = null + " value"
  let s3: string = "result: " + null
}
