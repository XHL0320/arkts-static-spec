/**
 * @id ANN_18_02_009_PASS_ON_CLASS_FIELD
 * @expect compile-pass
 * @section 18.2
 * @design 验证注解可应用于类字段
 * @note 正向用例：注解在 class field 上
 */
@interface Deprecated {
  reason: string
}

class C {
  @Deprecated({reason: "use newApi instead"})
  oldField: int = 0
}
