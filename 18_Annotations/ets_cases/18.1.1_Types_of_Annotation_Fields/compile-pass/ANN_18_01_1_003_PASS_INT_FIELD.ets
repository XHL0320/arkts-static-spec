/**
 * @id ANN_18_01_1_003_PASS_INT_FIELD
 * @expect compile-pass
 * @section 18.1.1
 * @design 验证 int 类型是合法的注解字段类型
 * @note 正向用例：int 类型字段
 */
@interface A {
  count: int
}
