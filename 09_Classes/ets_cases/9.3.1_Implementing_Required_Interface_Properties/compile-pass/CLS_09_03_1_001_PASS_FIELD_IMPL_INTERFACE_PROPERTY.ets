/**
 * @id CLS_09_03_1_001_PASS_FIELD_IMPL_INTERFACE_PROPERTY
 * @expect compile-pass
 * @section 9.3.1
 * @design 字段实现接口必需属性编译通过
 * @note 正向用例：spec规定接口field属性可由类field实现
 */
interface IFieldProp {
  n: number
}
class CFieldProp implements IFieldProp {
  n: number = 1
}
