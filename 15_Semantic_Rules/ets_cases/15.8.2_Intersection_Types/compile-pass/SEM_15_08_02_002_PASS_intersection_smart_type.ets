/**
 * @id SEM_15_08_02_002_PASS_intersection_smart_type
 * @expect compile-pass
 * @section 15.8.2
 * @design 规范 15.8.2：instanceof缩窄后交集类型I&C的智能类型
 * @note 正向用例：i instanceof C后调用i.foo()和i.bar()
 */
interface I {
    bar(): void;
}
class C implements I {
    foo(): void {}
    bar(): void {}
}
function test(i: I): void {
    if (i instanceof C) {
        i.foo();
        i.bar();
    }
}
function main(): void {
    test(new C());
}
