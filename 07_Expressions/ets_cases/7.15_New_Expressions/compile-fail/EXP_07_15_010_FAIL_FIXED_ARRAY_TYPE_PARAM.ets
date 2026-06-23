/**
 * @id EXP_07_15_010_FAIL_FIXED_ARRAY_TYPE_PARAM
 * @expect compile-fail
 * @section 7.15
 * @design 验证 FixedArray<T> 使用类型参数作为元素类型编译时错误
 * @note 反向用例：FixedArray 元素类型不能是类型参数
 */
class A<T> {
  foo(element: T): void {
    let a = new FixedArray<T>(5, element)
  }
}
