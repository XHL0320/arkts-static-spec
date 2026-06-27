/**
 * @id ANN_18_01_1_001_PASS_STRING_FIELD
 * @expect compile-pass
 * @section 18.1.1
 * @design 验证 string 类型是合法的注解字段类型
 * @note 正向用例：string 类型字段
 */
@interface A {
  name: string
}
