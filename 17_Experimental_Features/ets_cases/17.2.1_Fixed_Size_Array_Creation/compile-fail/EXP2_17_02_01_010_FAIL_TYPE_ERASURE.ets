/**
 * @id EXP2_17_02_01_010_FAIL_TYPE_ERASURE
 * @expect compile-fail
 * @section 17.2.1
 * @design FixedArray 元素类型 T 未被类型擦除保留：构造函数中使用类型参数 T 作为元素类型应产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误。类型参数不被类型擦除保留，故 new FixedArray<T>(...) 非法
 */
class Container<T> {
  item: T
  constructor(val: T) {
    this.item = val
  }
  makeArray(): void {
    let arr = new FixedArray<T>(3, this.item)
    console.log(arr.length)
  }
}
