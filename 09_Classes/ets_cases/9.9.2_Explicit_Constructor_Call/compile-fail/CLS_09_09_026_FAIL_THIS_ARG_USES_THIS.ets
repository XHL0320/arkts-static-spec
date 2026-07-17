/**
 * @id CLS_09_09_026_FAIL_THIS_ARG_USES_THIS
 * @expect compile-fail
 * @section 9.9.2
 * @design 辅助构造器this()参数中不能使用this或super
 * @note spec: this() call args cannot use this or super
 */
class Base026 { constructor(x: int) {} }
class Derived026 extends Base026 {
    constructor(x: int) { super(x) }
    constructor(y: int, z: int) { this(this.foo()) }
    foo(): int { return 1 }
}
