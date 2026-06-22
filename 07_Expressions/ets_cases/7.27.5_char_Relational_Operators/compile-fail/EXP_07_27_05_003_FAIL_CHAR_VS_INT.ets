/**
 * @id EXP_07_27_05_003_FAIL_CHAR_VS_INT
 * @expect compile-fail
 * @section 7.27.5
 * @design char 与 int 关系比较应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testCharVsIntFail(): void {
  let a: char = c"a"; let b: int = 97
  let bad: boolean = a < b; console.log(bad.toString())
}
