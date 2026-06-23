/**
 * @id EXP2_17_03_014_FAIL_VALUEARRAY_TYPE_PARAMETER
 * @expect compile-fail
 * @section 17.3
 * @design ValueArray<T> 编译错误：ValueArray 不是泛型类型，不能使用类型参数 T，必须使用具体值类型
 * @note 反向用例：验证该场景应产生编译时错误
 */
function useValueArrayWithTypeParam<T>(elem: T): void {
  let a: ValueArray<T> = [elem]
  console.log(a[0])
}

function testValueArrayTypeParamFail(): void {
  useValueArrayWithTypeParam<int>(42)
}
