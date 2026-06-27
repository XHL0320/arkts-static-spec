/**
 * @id ANN_18_04_006_FAIL_AMBIENT_MISMATCH_FIELD_MISSING
 * @expect compile-fail
 * @section 18.4
 * @design 验证 ambient 与实现的字段数量不一致导致错误
 * @note 反向用例：实现缺少 ambient 中定义的字段
 */
declare @interface Config {
  name: string
  version: int
}

export @interface Config {
  name: string
}
