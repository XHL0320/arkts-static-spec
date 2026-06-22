/**
 * @id CLS_09_06_6_012_PASS_GENERIC_OVERRIDE_FIELD_TYPE
 * @expect compile-pass
 * @section 9.6.6
 * @design 泛型类中override字段类型匹配编译通过
 * @note 正向用例：spec规定泛型类中override字段类型必须与父类对应泛型参数一致
 *       Spec依据：spec §9.6.6 示例class B<T>/D<U,V> — 泛型override field类型匹配
 */
class GenericBase012<T> {
  value: T = undefined as T
}
class GenericOverride<U, V> extends GenericBase012<U> {
  override value: U = undefined as U
  extra: V = undefined as V
}
