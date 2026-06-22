/**
 * @id CLS_09_03_1_002_PASS_READONLY_FIELD_IMPL_READONLY
 * @expect compile-pass
 * @section 9.3.1
 * @design readonly字段实现接口readonly属性编译通过
 * @note 正向用例：spec规定readonly属性可由readonly字段实现
 */
interface IReadProp {
  readonly r: number
}
class CReadProp implements IReadProp {
  readonly r: number = 1
}
