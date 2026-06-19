/**
 * @id CLS_09_09_004_FAIL_RETURN_VALUE_IN_CONSTRUCTOR
 * @expect compile-fail
 * @section 9.9.1
 * @design 构造器不能显式返回值 — spec: "Explicit return of a value is prohibited"
 * @note 反向用例：constructor中return有值表达式应编译失败
 */
class BadCons {
  constructor() {
    return 42
  }
}
