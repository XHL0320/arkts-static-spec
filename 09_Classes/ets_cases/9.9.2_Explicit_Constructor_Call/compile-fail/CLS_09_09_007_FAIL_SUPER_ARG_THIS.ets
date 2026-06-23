/**
 * @id CLS_09_09_007_FAIL_SUPER_ARG_THIS
 * @expect compile-fail
 * @section 9.9.2
 * @design super()调用的参数不能使用this — spec: "arguments cannot refer to this or super"
 * @note 反向用例：super(this.x)应编译失败
 */
class Base { constructor(n: int) {} }
class Bad extends Base {
  x: int = 1
  constructor() {
    super(this.x)
  }
}
