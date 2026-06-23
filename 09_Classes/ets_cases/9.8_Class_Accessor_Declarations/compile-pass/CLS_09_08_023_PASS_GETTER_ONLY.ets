/**
 * @id CLS_09_08_023_PASS_GETTER_ONLY
 * @expect compile-pass
 * @section 9.8
 * @design getter-only（无setter）— 只读属性
 * @note 正向用例：仅有getter的accessor编译通过
 */
class ReadOnly {
  private _data: int = 100
  get data(): int { return this._data }
}
