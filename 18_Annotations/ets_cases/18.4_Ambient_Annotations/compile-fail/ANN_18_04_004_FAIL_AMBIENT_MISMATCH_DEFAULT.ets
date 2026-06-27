/**
 * @id ANN_18_04_004_FAIL_AMBIENT_MISMATCH_DEFAULT
 * @expect compile-fail
 * @section 18.4
 * @design 验证 ambient 与实现的字段初始化不一致导致错误
 * @note 反向用例：ambient 缺少字段默认值，实现有默认值
 */
declare @interface VersionAnno {
  version: number
}

export @interface VersionAnno {
  version: number = 1
}
