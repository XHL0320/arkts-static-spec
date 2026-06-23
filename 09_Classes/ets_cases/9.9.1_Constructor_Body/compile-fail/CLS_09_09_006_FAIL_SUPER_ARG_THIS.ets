/**
 * @id CLS_09_09_006_FAIL_SUPER_ARG_THIS
 * @expect compile-fail
 * @section 9.9.1
 * @design super()调用实参不能使用this — spec: "Call argument uses this or super"
 * @note 反向用例：super()实参中引用this.instanceField应编译失败
 */
class Base006 {
  n: int = 0
  constructor(v: int) {
    this.n = v
  }
}
class Derived006 extends Base006 {
  x: int = 1
  constructor() {
    super(this.x)
  }
}
