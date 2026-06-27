/**
 * @id ANN_18_04_003_PASS_DECLARE_WITH_FIELDS
 * @expect compile-pass
 * @section 18.4
 * @design 验证带字段的 ambient annotation 声明
 * @note 正向用例：declare @interface 带字段和默认值
 */
declare @interface Config {
  name: string = "default"
  version: int = 1
}
