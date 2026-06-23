/**
 * @id EXP2_17_01_02_007_FAIL_CHAR_EQ_STRING
 * @expect compile-fail
 * @section 17.1.2
 * @design char 与 string 的比较应产生编译时错误（spec: 不兼容的类型比较）
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testCharEqStringFail(): void {
  let c: char = c'a'
  let result: boolean = c == "a"
  console.log(result)
}
