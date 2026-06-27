/**
 * @id ANN_18_01_003_PASS_MULTIPLE_FIELDS
 * @expect compile-pass
 * @section 18.1
 * @design 验证含多个字段的注解声明可通过编译
 * @note 正向用例：注解含多个不同类型字段
 */
@interface Config {
  url: string
  timeout: number
  retry: boolean
}
