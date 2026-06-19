/**
 * @id CLS_09_08_011_RUNTIME_OVERRIDE_ACCESSOR
 * @expect runtime
 * @section 9.8
 * @design override accessor runtime验证：getter covariant, setter contravariant
 * @note 运行时用例：验证子类override getter返回更具体类型、setter接受更宽类型
 */
class AccBase {
  get field(): AccBase { return new AccBase() }
  set field(a_field: AccBase) {}
}

class AccDerived extends AccBase {
  override get field(): AccDerived { return new AccDerived() }
  override set field(a_field: AccBase) {}
}

function main(): void {
  let d: AccDerived = new AccDerived()
  let val: AccBase = d.field
  if (val == null) { throw new Error("getter should return non-null") }
  d.field = new AccBase()
  d.field = new AccDerived()
  console.log("verified")
}
