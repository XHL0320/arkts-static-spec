/**
 * @id CLS_09_03_2_009_PASS_SETTER_ONLY_IMPL_OPTIONAL
 * @expect compile-pass
 * @section 9.3.2
 * @design 只有setter实现可选接口属性编译通过
 * @note 正向用例：spec规定可选接口属性可以只用setter实现
 *       Spec依据：spec §9.3.2 示例class C2 — setter-only实现可选属性合法
 */
interface IOptSetter9 {
  n?: number
}
class CSetterOnlyOpt implements IOptSetter9 {
  set n(v: number) {}
}
