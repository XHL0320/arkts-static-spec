/**
 * @id EXP_07_27_03_003_FAIL_STRING_NUMBER
 * @expect compile-fail
 * @section 7.27.3
 * @design 验证string类型与number类型操作数不能直接用于关系运算符，应产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testStringNumber(): void {
  let s: string = "hello"
  let n: number = 42
  let r: boolean = s > n  // compile-fail: string > number, incompatible
  console.log(r.toString())
}
