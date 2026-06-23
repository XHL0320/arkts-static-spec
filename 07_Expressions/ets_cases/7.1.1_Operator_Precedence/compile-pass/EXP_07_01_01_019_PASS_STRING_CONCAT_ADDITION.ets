/**
 * @id EXP_07_01_01_019_PASS_STRING_CONCAT_ADDITION
 * @expect compile-pass
 * @section 7.1.1
 * @design 字符串拼接 `+` 与数值加法 `+` 同优先级，左结合
 * @note 正向用例：验证字符串拼接与数值加法优先级相同
 */
function testStringConcatAddition(): void {
  let s1: string = "a" + 1 + 2
  let s2: string = "a" + (1 + 2)
  let s3: string = 1 + 2 + "a"
}
