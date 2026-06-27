/**
 * @id ANN_18_01_1_006_PASS_LONG_FIELD
 * @expect compile-pass
 * @section 18.1.1
 * @design 验证 long 类型是合法的注解字段类型
 * @note 正向用例：long 类型字段
 */
@interface A {
  id: long
}
