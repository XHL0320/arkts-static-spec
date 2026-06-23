/**
 * @id CLS_09_08_008_FAIL_GETTER_SETTER_MODIFIER_MISMATCH
 * @expect compile-pass
 * @section 9.8
 * @design 同名 getter 和 setter 有不同修饰符应编译失败
 * @note 反向用例：getter 和 setter 同时定义时必须有相同的 accessor modifiers
 */
class DataHolder {
  private _data: int = 0
  static get data(): int { return 0 }
  set data(v: int) { // Compile-time error, getter is static but setter is not
    this._data = v
  }
}
