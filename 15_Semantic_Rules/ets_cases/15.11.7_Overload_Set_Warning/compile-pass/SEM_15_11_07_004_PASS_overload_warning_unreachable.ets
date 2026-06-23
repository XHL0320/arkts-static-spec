/**
 * @id SEM_15_11_07_004_PASS_overload_warning_unreachable
 * @expect compile-pass
 * @section 15.11.7
 * @design Overload set warning when an entity can never be selected (f3 never called)
 * @note Spec lines 12-24
 */
function f1(p: number): void { console.log("f1") }
function f2(p: number | string): void { console.log("f2") }
function f3(p: string): void { console.log("f3") }
overload foo { f1, f2, f3 }
function main(): void {
    foo(5)
    foo("5")
}
