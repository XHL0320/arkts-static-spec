/**
 * @id SEM_15_09_02_005_PASS_new_method_interface
 * @expect compile-pass
 * @section 15.9.2
 * @design foo(p: number) is a new method declaration, not related to private foo() from superinterface
 * @note Spec lines 32-60, foo(p: number)
 */
interface Base {
    private foo(): void {}
}
interface Derived extends Base {
    foo(p: number): void
}
function main(): void {}
