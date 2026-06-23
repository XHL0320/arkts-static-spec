/**
 * @id EXP2_17_03_012_FAIL_VALUEARRAY_UNION_TYPE
 * @expect compile-fail
 * @section 17.3
 * @design ValueArray<int|undefined> 编译错误：联合类型不是值类型，ValueArray 的类型参数必须是单一值类型
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testValueArrayUnionTypeFail(): void {
  let a: ValueArray<int | undefined> = [1, 2, 3]
  console.log(a[0])
}
