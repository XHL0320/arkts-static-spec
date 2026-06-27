/**
 * @id ANN_18_02_015_PASS_ON_SETTER
 * @expect compile-pass
 * @section 18.2
 * @design 验证注解可应用于 setter
 * @note 正向用例：注解在 setter 上
 */
@interface Validated {}

class C {
  private _val: int = 0
  @Validated
  set val(v: int) {
    this._val = v
  }
}
