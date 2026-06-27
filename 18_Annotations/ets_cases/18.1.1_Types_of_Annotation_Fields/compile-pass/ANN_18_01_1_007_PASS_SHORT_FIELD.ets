/**
 * @id ANN_18_01_1_007_PASS_SHORT_FIELD
 * @expect compile-pass
 * @section 18.1.1
 * @design 验证 short 类型是合法的注解字段类型
 * @note 正向用例：short 类型字段
 */
@interface A {
  small: short
}
