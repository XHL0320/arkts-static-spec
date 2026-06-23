/**
 * @id EXP2_17_03_011_FAIL_VALUEARRAY_STRING
 * @expect compile-fail
 * @section 17.3
 * @design ValueArray<string> 编译错误：string 不是值类型，ValueArray 的类型参数必须是值类型（byte/short/int/long/float/double/char/boolean）
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testValueArrayStringFail(): void {
  let a: ValueArray<string> = ["hello", "world"]
  console.log(a[0])
}
