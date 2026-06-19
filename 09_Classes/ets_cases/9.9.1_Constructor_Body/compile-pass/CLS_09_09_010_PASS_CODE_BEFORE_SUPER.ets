/**
 * @id CLS_09_09_010_PASS_CODE_BEFORE_SUPER
 * @expect compile-pass
 * @section 9.9.1
 * @design 主构造器中super()前可放置不使用this/super的任意代码 — spec: "Optional arbitrary code that uses neither this nor super"
 * @note 正向用例：验证super()前可执行局部变量计算、静态方法调用等不涉及this/super的代码
 */
class Base010 {
  n: int = 0
  constructor(v: int) {
    this.n = v
  }
}
class Derived010 extends Base010 {
  constructor(x: int) {
    let computed: int = x * 2 + 1
    let offset: int = 10
    super(computed + offset)
  }
}
