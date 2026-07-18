/**
 * @id CLS_09_09_025_FAIL_MULTIPLE_SUPER_THIS
 * @expect compile-fail
 * @section 9.9
 * @design 构造函数体有超过一个super/this调用
 * @note spec: constructor body cannot have more than one super/this call
 */
class Base025 {}
class Derived025 extends Base025 {
    constructor() { super(); super() }
}
