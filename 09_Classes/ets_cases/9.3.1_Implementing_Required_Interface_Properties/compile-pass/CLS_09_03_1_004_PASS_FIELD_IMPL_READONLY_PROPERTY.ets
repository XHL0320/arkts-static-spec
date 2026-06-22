/**
 * @id CLS_09_03_1_004_PASS_FIELD_IMPL_READONLY_PROPERTY
 * @expect compile-pass
 * @section 9.3.1
 * @design writeable字段实现接口readonly属性编译通过
 * @note 正向用例：spec规定readonly属性可由非readonly字段实现
 */
interface IReadProp2 {
  readonly r: number
}
class CWriteProp implements IReadProp2 {
  r: number = 0
}
