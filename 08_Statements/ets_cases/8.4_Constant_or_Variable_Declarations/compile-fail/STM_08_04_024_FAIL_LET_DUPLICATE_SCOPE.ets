/**
 * @id STM_08_04_024_FAIL_LET_DUPLICATE_SCOPE
 * @expect compile-fail
 * @section 8.4
 * @design 同一作用域重复 let 声明应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testLetDuplicateScopeFail(): void {
  let x: int = 1
  let x: string = "dup"
  console.log(x.toString())
}
