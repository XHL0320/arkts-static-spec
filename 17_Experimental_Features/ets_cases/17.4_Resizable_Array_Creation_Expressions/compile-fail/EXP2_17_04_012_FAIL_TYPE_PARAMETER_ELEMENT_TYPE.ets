/**
 * @id EXP2_17_04_012_FAIL_TYPE_PARAMETER_ELEMENT_TYPE
 * @expect compile-fail
 * @section 17.4
 * @design 类型参数作为元素类型：new T[2](element) 在泛型上下文使用类型参数作为数组元素类型，应产生编译时错误
 * @note 反向用例：验证 arrayElementType 为类型参数时触发编译时错误
 */
class Container<T> {
  createArray(element: T): void {
    let arr = new T[2](element)
    console.log(arr.length)
  }
}
