/**
 * @id CLS_09_03_2_003_PASS_ACCESSOR_IMPL_OPTIONAL
 * @expect compile-pass
 * @section 9.3.2
 * @design accessor实现可选属性编译通过
 * @note 正向用例：spec规定可选属性可由accessor实现
 */
interface IOpt3 {
  num?: number
}
class COpt3 implements IOpt3 {
  private _num: number = 42
  get num(): number { return this._num }
  set num(v: number) { this._num = v }
}
