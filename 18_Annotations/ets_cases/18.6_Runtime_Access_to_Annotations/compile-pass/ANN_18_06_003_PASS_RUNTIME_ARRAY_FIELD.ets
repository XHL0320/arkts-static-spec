/**
 * @id ANN_18_06_003_PASS_RUNTIME_ARRAY_FIELD
 * @expect compile-pass
 * @section 18.6
 * @design 验证 @Retention("RUNTIME") 含数组字段（隐式 readonly 数组）
 * @note 正向用例：数组字段在抽象类中变为 readonly
 */
@Retention("RUNTIME")
@interface MyAnno {
  attrs: number[]
}
