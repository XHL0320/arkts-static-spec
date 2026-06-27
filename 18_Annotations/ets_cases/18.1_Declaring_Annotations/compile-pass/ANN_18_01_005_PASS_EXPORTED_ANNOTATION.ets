/**
 * @id ANN_18_01_005_PASS_EXPORTED_ANNOTATION
 * @expect compile-pass
 * @section 18.1
 * @design 验证导出注解声明可通过编译
 * @note 正向用例：使用 export 关键字导出注解
 */
export @interface ApiVersion {
  version: number
}
