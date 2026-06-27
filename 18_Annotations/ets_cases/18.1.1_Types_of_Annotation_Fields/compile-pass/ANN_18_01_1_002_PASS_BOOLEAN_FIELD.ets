/**
 * @id ANN_18_01_1_002_PASS_BOOLEAN_FIELD
 * @expect compile-pass
 * @section 18.1.1
 * @design 验证 boolean 类型是合法的注解字段类型
 * @note 正向用例：boolean 类型字段
 */
@interface A {
  flag: boolean
}
