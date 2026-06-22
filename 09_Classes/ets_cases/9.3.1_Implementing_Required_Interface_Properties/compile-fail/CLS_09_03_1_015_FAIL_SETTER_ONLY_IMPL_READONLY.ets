/**
 * @id CLS_09_03_1_015_FAIL_SETTER_ONLY_IMPL_READONLY
 * @expect compile-fail
 * @section 9.3.1
 * @design setter-only实现readonly接口属性导致编译错误
 * @note 反向用例：spec规定readonly接口属性必须有getter定义，
 *       仅用setter实现readonly属性（缺少getter）应导致compile-time error
 *       Spec依据："interface property is readonly, and the getter is not defined,
 *       and the class does not inherit a getter for this property name from any
 *       of its parent classes, a compile-time error occurs."
 */
interface IReadProp015 {
  get n(): number
}
class SetterOnlyRead implements IReadProp015 {
  set n(v: number) {}
}
