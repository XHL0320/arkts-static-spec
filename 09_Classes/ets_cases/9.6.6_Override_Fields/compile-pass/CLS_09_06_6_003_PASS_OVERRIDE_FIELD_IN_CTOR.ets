/**
 * @id CLS_09_06_6_003_PASS_OVERRIDE_FIELD_IN_CTOR
 * @expect compile-pass
 * @section 9.6.6
 * @design override字段在构造器中初始化编译通过
 * @note 正向用例：spec规定override字段可在构造器中初始化
 */
class OverrideCtorBase {
  f2: string = "base"
}
class OverrideCtorSub extends OverrideCtorBase {
  f2: string = "sub"
}
