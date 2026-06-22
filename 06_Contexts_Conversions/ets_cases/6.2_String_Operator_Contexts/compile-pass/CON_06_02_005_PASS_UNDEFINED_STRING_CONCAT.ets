/**
 * @id CON_06_02_005_PASS_UNDEFINED_STRING_CONCAT
 * @expect compile-pass
 * @section 6.2
 * @design String context: undefined + string，undefined 转换为 "undefined"
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testUndefinedStringConcat(): void {
  let u: string | undefined = undefined
  let s1: string = "value: " + u

  let s2: string = "" + undefined
}
