/**
 * @id CLS_09_03_2_008_PASS_GETTER_ONLY_IMPL_OPTIONAL
 * @expect compile-pass
 * @section 9.3.2
 * @design 只有getter实现可选接口属性编译通过
 * @note 正向用例：spec规定可选接口属性可以只用getter实现，
 *       不实现setter也是合法的
 *       Spec依据：spec §9.3.2 示例 — 可选属性可用getter-only实现
 */
interface IOptGetter8 {
  n?: number
}
class CGGetterOnly implements IOptGetter8 {
  get n(): number { return 42 }
}
