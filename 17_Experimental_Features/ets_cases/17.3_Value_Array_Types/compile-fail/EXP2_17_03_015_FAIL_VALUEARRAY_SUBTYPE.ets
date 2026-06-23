/**
 * @id EXP2_17_03_015_FAIL_VALUEARRAY_SUBTYPE
 * @expect compile-fail
 * @section 17.3
 * @design ValueArray<int> 赋值给 ValueArray<long> 编译错误：ValueArray 类型之间不存在子类型关系，除非类型参数完全相同
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testValueArraySubtypeFail(): void {
  let a: ValueArray<int> = [1, 2, 3]
  let b: ValueArray<long> = a
  console.log(b[0])
}
