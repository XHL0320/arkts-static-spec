/**
 * @id ANN_18_01_1_004_PASS_DOUBLE_FIELD
 * @expect compile-pass
 * @section 18.1.1
 * @design 验证 double 类型是合法的注解字段类型
 * @note 正向用例：double 类型字段
 */
@interface A {
  value: double
}
