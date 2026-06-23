/**
 * @id SEM_15_11_02_102_FAIL_overload_set_functions
 * @expect compile-fail
 * @section 15.11.2
 * @design Overload set formation and resolution for functions with explicit overload
 * @note Spec lines 14-50
 */
function fooN(n: number): void { console.log("fooN") }
function foo(): void { console.log("foo#1") }
function foo(b: boolean): void { console.log("foo#2") }
function fooX(x?: number): void { console.log("fooX") }
overload foo { fooN, foo, fooX }
overload bar { fooX, foo }
function main(): void {
    foo(1)
    bar(1)
    foo()
    bar()
    foo(true)
    bar(true)
}
