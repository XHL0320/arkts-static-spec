/**
 * @id ANN_18_04_005_FAIL_AMBIENT_MISMATCH_TYPE
 * @expect compile-fail
 * @section 18.4
 * @design 验证 ambient 与实现的字段类型不一致导致错误
 * @note 反向用例：ambient 字段类型 string，实现为 int
 */
declare @interface Config {
  value: string
}

export @interface Config {
  value: int
}
