/**
 * @id ANN_18_01_1_011_PASS_STRING_ARRAY_FIELD
 * @expect compile-pass
 * @section 18.1.1
 * @design 验证 string[] 数组类型是合法的注解字段类型
 * @note 正向用例：string 数组类型字段
 */
@interface A {
  tags: string[]
}
