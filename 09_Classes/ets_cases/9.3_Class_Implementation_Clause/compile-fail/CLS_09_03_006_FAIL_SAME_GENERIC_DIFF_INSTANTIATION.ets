/**
 * @id CLS_09_03_006_FAIL_SAME_GENERIC_DIFF_INSTANTIATION
 * @expect compile-fail
 * @section 9.3
 * @design 类实现同一泛型接口的不同实例化导致编译错误
 * @note 反向用例：spec规定类不能实现同一泛型接口的不同参数化
 */
interface IContainer<T> {
  get(): T
}
class BadGeneric implements IContainer<int>, IContainer<string> {
  get(): int { return 0 }
}
