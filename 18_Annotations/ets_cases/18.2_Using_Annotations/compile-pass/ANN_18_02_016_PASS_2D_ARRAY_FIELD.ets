/**
 * @id ANN_18_02_016_PASS_2D_ARRAY_FIELD
 * @expect compile-pass
 * @section 18.2
 * @design 验证二维数组字面量赋值
 * @note 正向用例：string[][] 字段使用嵌套数组字面量
 */
@interface Matrix {
  data: string[][]
}

@Matrix({data: [["a", "b"], ["c", "d"]]})
class C {}
