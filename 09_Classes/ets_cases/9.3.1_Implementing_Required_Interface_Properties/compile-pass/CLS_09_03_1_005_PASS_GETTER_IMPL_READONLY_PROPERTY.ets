/**
 * @id CLS_09_03_1_005_PASS_GETTER_IMPL_READONLY_PROPERTY
 * @expect compile-pass
 * @section 9.3.1
 * @design getter实现接口readonly属性编译通过
 * @note 正向用例：spec规定readonly属性可由getter实现
 */
interface IReadProp3 {
  readonly r: number
}
class CGetterRead implements IReadProp3 {
  get r(): number { return 42 }
}
