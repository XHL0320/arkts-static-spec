/**
 * @id CLS_09_09_007_FAIL_SUPER_ARG_SUPER
 * @expect compile-fail
 * @section 9.9.1
 * @design super()调用实参不能使用super关键字 — spec: "Call argument uses this or super"
 * @note 反向用例：super()实参中出现super.method()应编译失败
 */
class Base007 {
  constructor(v: string) {}
  toString(): string {
    return "base"
  }
}
class Derived007 extends Base007 {
  constructor() {
    super(super.toString())
  }
}
