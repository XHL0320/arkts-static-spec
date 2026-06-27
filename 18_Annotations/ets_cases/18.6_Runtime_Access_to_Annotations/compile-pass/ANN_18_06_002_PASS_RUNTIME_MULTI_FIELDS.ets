/**
 * @id ANN_18_06_002_PASS_RUNTIME_MULTI_FIELDS
 * @expect compile-pass
 * @section 18.6
 * @design 验证 @Retention("RUNTIME") 含多类型字段
 * @note 正向用例：string + int + boolean 字段
 */
@Retention("RUNTIME")
@interface Config {
  name: string
  version: int
  active: boolean
}
