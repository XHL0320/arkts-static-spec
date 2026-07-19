/**
 * @id CLS_09_06_4_006_PASS_SUPER_IN_INITIALIZER
 * @expect compile-pass
 * @section 9.6.4
 * @design 字段初始化器中使用super产生compile-time warning（非error）
 * @note 编译器现在对super也产生Warning W0010，EXIT=0。符合spec要求。
 *       2026-07-17 确认编译器已修复（此前super不产生warning）。
 */
class SuperBase006 {
  method(): number { return 10 }
}
class SuperInitField extends SuperBase006 {
  f0 = super.method()
}
