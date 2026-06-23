/**
 * @id EXP2_17_03_013_FAIL_VALUEARRAY_OBJECT
 * @expect compile-fail
 * @section 17.3
 * @design ValueArray<Object> 编译错误：Object 不是值类型，ValueArray 的类型参数必须是原始值类型
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testValueArrayObjectFail(): void {
  let a: ValueArray<Object> = [new Object(), new Object()]
  console.log(a[0])
}
