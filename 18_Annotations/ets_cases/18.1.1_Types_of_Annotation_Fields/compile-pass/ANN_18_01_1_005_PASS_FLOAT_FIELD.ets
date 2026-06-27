/**
 * @id ANN_18_01_1_005_PASS_FLOAT_FIELD
 * @expect compile-pass
 * @section 18.1.1
 * @design 验证 float 类型是合法的注解字段类型
 * @note 正向用例：float 类型字段
 */
@interface A {
  value: float
}
