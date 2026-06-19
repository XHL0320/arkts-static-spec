/**
 * @id CLS_09_08_025_FAIL_SETTER_RETURN_TYPE
 * @expect compile-fail
 * @section 9.8
 * @design setter不能有返回类型 — spec: setter must have no return type
 * @note 反向用例：setter声明返回类型应编译失败
 */
class Bad {
  private _v: int = 0
  set value(v: int): int { this._v = v; return v }
}
