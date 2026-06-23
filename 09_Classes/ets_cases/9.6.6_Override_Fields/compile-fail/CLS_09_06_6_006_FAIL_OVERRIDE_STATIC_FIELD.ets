/**
 * @id CLS_09_06_6_006_FAIL_OVERRIDE_STATIC_FIELD
 * @expect compile-fail
 * @section 9.6.6
 * @design static+override字段导致编译错误
 * @note 反向用例：spec规定override不得与static组合
 */
class StaticOverrideBase {
  static field: string = "aa"
}
class StaticOverrideSub extends StaticOverrideBase {
  static override field: string = "bb"
}
