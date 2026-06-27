/**
 * @id ANN_18_01_1_012_PASS_INT_ARRAY_FIELD
 * @expect compile-pass
 * @section 18.1.1
 * @design 验证 int[] 数组类型是合法的注解字段类型
 * @note 正向用例：int 数组类型字段
 */
@interface A {
  counts: int[]
}
