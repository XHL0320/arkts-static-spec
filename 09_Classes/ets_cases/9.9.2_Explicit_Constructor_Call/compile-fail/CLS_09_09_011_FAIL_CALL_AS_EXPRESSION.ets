/**
 * @id CLS_09_09_011_FAIL_CALL_AS_EXPRESSION
 * @expect compile-fail
 * @section 9.9.2
 * @design 显式构造器调用用作表达式 — spec: "Explicit constructor call is used as expression"
 * @note 反向用例：将super()调用赋值给变量，应编译失败
 */
class CLS_09_09_011_Base {
  constructor(x: int) {}
}
class CLS_09_09_011_Derived extends CLS_09_09_011_Base {
  constructor(x: int) {
    let v = super(x)
  }
}
