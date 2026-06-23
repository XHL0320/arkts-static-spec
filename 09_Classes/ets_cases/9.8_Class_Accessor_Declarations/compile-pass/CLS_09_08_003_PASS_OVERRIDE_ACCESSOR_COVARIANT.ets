/**
 * @id CLS_09_08_003_PASS_OVERRIDE_ACCESSOR_COVARIANT
 * @expect compile-pass
 * @section 9.8
 * @design override getter 返回类型协变（更具体），setter 参数类型逆变（更泛化）
 * @note 正向用例：getter covariant (Derived <: Base), setter contravariant (Base >: Derived)
 */
class Base {
  get field(): Base { return new Base() }
  set field(a_field: Derived) {}
}

class Derived extends Base {
  override get field(): Derived { return new Derived() }
  override set field(a_field: Base) {}
}

function testOverrideCovariant(): void {
  let b: Base = new Derived()
  b.field = new Derived() // setter is called
  let r: Base = b.field    // getter is called
}
