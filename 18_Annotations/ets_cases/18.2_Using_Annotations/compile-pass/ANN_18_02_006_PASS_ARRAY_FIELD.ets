/**
 * @id ANN_18_02_006_PASS_ARRAY_FIELD
 * @expect compile-pass
 * @section 18.2
 * @design 验证数组字段的字面量赋值
 * @note 正向用例：string[] 字段使用数组字面量
 */
@interface Config {
  tags: string[]
}

@Config({tags: ["a", "b", "c"]})
class C {}
