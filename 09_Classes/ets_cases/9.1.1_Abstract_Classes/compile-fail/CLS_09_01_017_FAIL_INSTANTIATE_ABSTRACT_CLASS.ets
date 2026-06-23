/**
 * @id CLS_09_01_017_FAIL_INSTANTIATE_ABSTRACT_CLASS
 * @expect compile-fail
 * @section 9.1.1
 * @design 实例化抽象类导致编译错误
 * @note 反向用例：spec 规定不能创建抽象类的实例
 */
abstract class AbsX {
  field: number
  constructor(p: number) { this.field = p }
}
let x = new AbsX(42)

