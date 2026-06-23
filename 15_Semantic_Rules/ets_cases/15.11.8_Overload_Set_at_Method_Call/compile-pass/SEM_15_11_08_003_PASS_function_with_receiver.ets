/**
 * @id SEM_15_11_08_003_PASS_function_with_receiver
 * @expect compile-pass
 * @section 15.11.8
 * @design Functions with receiver considered for method call syntax, ordinary functions not
 * @note Spec lines 14-32
 */
class C {}
function foo(this: C): void { console.log("#1") }
function foo(this: C, s: string): void { console.log("#2") }
function foo(c: C, n: number): void { console.log("#3") }
function main(): void {
    let c: C = new C()
    c.foo()
    foo(c)
}
