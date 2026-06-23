/**
 * @id CLS_09_06_4_006_FAIL_SUPER_IN_INITIALIZER
 * @expect compile-fail
 * @section 9.6.4
 * @design 字段初始化器中使用super导致compile-time warning
 * @note 反向用例：spec规定初始化器表达式使用super产生compile-time warning/error
 *       Spec依据：spec §9.6.4 "If the initializer expression uses super or this
 *       in any form, then a compile-time warning occurs."
 *       与CLS-G5相关（this在初始化器中的SPEC不一致问题同样适用于super）
 */
class SuperBase006 {
  method(): number { return 10 }
}
class SuperInitField extends SuperBase006 {
  f0 = super.method()
}
