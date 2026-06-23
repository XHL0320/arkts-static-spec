/**
 * @id CLS_09_01_004_PASS_GENERIC_CLASS
 * @expect compile-pass
 * @section 9.1
 * @design 泛型类声明编译通过
 * @note 正向用例：验证带类型参数的类声明
 */
class MyContainer<T> {
  value: T
  constructor(v: T) {
    this.value = v
  }
  getValue(): T {
    return this.value
  }
}

