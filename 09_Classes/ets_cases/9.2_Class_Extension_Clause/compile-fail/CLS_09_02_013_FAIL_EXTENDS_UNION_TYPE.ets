/**
 * @id CLS_09_02_013_FAIL_EXTENDS_UNION_TYPE
 * @expect compile-fail
 * @section 9.2
 * @design extends子句指向union类型应编译失败
 * @note 反向用例：spec §9.2规定extends只能指向类类型，
 *       union类型、function类型等非类类型不能作为extends目标
 *       Spec依据：spec §9.2 "Only a class type can be used as a superclass"
 */
type UnionType013 = string | number
class BadUnionClass extends UnionType013 {
}
