/**
 * @id EXP_07_17_02_002_PASS_SUBTYPE_AS_SUPERTYPE
 * @expect compile-pass
 * @section 7.17.2
 * @design 验证子类变量 as 超类编译通过（编译时 warning: 始终成功）
 * @note 正向用例：D as C (D extends C) 运行时总是成功
 */
class C {}
class D extends C {}

function foo(d: D): void {
    let c: C = d as C
}
