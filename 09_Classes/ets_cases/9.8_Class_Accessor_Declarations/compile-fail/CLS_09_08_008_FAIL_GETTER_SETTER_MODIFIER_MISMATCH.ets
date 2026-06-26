/**
 * @id CLS_09_08_008_FAIL_GETTER_SETTER_MODIFIER_MISMATCH
 * @expect compile-fail
 * @section 9.8
 * @design 同名 getter 与 setter 同时存在时 accessor modifiers 必须一致（同为 static 或同为实例），否则 compile-time error
 * @note 反向用例（负向看护）：getter 为 static、setter 为非 static，修饰符不一致。es2panda 当前未实现该检查（见 issue_report C-9.08-01 / spec_original CLS-G1），故实际编译通过（unexpected pass）；用例置于 compile-fail 看护该未实现检查，待编译器补全后转为预期失败
 */
class DataHolder {
  private _data: int = 0
  static get data(): int { return 0 }
  set data(v: int) { // Compile-time error, getter is static but setter is not
    this._data = v
  }
}
