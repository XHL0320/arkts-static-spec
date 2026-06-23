/**
 * @id CLS_09_03_1_003_PASS_GETTER_SETTER_IMPL_PROPERTY
 * @expect compile-pass
 * @section 9.3.1
 * @design getter+setter实现接口属性编译通过
 * @note 正向用例：spec规定接口field属性可由getter+setter实现
 */
interface IGSProp {
  n: number
}
class CGSProp implements IGSProp {
  private _n: number = 0
  get n(): number { return this._n }
  set n(v: number) { this._n = v }
}
