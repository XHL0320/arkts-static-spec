/**
 * @id ANN_18_01_1_009_PASS_NUMBER_FIELD
 * @expect compile-pass
 * @section 18.1.1
 * @design 验证 number 类型是合法的注解字段类型（Numeric Types）
 * @note 正向用例：number 类型字段
 */
@interface A {
  value: number
}
