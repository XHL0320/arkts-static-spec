/**
 * @id ANN_18_02_014_PASS_ON_GETTER
 * @expect compile-pass
 * @section 18.2
 * @design 验证注解可应用于 getter
 * @note 正向用例：注解在 getter 上
 */
@interface Computed {}

class C {
  private _val: int = 0
  @Computed
  get val(): int {
    return this._val
  }
}
