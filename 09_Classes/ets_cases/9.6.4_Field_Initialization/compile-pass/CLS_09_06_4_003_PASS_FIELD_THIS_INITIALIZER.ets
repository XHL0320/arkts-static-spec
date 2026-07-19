/**
 * @id CLS_09_06_4_003_PASS_FIELD_THIS_INITIALIZER
 * @expect compile-pass
 * @section 9.6.4
 * @design 字段初始化器中使用this产生compile-time warning（非error）
 * @note 编译器现在产生Warning W0010，EXIT=0。符合spec要求warning而非error。
 *       2026-07-17 PDF原文核查确认：compile-time warning非compile-time error。
 */
class ThisInit {
  f0 = this
}
