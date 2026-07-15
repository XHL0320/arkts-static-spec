/**
 * @id GEN_05_01_006_PASS_INSTANTIATION_NEW_TYPES
 * @expect compile-pass
 * @section 5.2
 * @design 泛型实例化产生新的generic/non-generic实体
 * @note spec: A<U> is new generic, A<Object> is new non-generic type
 */
class A006<T> {}
class B006<U, V> extends A006<U> {
  field: A006<V>
  method(p: A006<Object>): void {}
}
