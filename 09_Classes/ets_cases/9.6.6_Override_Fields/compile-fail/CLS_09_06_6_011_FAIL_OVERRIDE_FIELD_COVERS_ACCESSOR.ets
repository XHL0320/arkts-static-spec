/**
 * @id CLS_09_06_6_011_FAIL_OVERRIDE_FIELD_COVERS_ACCESSOR
 * @expect compile-fail
 * @section 9.6.6
 * @design override字段覆盖父类getter/setter导致编译错误
 * @note 反向用例：spec规定字段不能用override覆盖父类的getter、setter或getter+setter pair
 *       Spec依据：spec §9.6.6 "A compile-time error occurs if a field overrides
 *       a getter, a setter, or both in a superclass."
 */
class BaseAccessor011 {
  get n(): number { return 0 }
}
class OverrideFieldAccessor extends BaseAccessor011 {
  override n: number = 1
}
