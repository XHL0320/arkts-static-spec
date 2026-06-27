/**
 * @id ANN_18_01_1_015_PASS_STRING_2D_ARRAY_FIELD
 * @expect compile-pass
 * @section 18.1.1
 * @design 验证 string[][] 多维数组类型是合法的注解字段类型
 * @note 正向用例：string 二维数组类型字段
 */
@interface A {
  matrix: string[][]
}
