/**
 * @id EXP_07_17_02_003_PASS_UNRELATED_AS_WARNING
 * @expect compile-pass
 * @section 7.17.2
 * @design 验证不相关子类 as 编译通过（编译时 warning: 始终抛 ClassCastError）
 * @note 正向用例：D as E (D, E 都继承 C 但互不相关) 编译通过，运行时抛 ClassCastError
 */
class C {}
class D extends C {}
class E extends C {}

function foo(d: D): void {
    let e: E = d as E
}
