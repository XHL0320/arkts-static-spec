/**
 * @id ANN_18_01_002_PASS_SINGLE_FIELD
 * @expect compile-pass
 * @section 18.1
 * @design 验证含一个字段的注解声明可通过编译
 * @note 正向用例：注解含单个字段
 */
@interface Author {
  name: string
}
