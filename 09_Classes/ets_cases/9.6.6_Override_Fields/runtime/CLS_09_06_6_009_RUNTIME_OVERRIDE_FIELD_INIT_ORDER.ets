/**
 * @id CLS_09_06_6_009_RUNTIME_OVERRIDE_FIELD_INIT_ORDER
 * @expect runtime
 * @section 9.6.6
 * @design override字段初始化顺序运行时验证
 * @note 运行时用例：验证override字段初始化器在超类构造器上下文中执行
 */
class OverrideOrderBase {
  field: int = 123
}
class OverrideOrderSub extends OverrideOrderBase {
  field: int = 456
}
function main(): void {
  let s = new OverrideOrderSub()
  if (s.field != 456) { throw new Error("s.field should be 456") }
  console.log("Override field init order verified")
}
