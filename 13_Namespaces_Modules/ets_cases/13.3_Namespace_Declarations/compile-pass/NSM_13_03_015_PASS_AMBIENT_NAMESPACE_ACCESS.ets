/*
 * @id NSM_13_03_015_PASS_AMBIENT_NAMESPACE_ACCESS
 * @expect compile-pass
 * @section 13.3
 * @design ambient namespace members accessible across module
 * @note declare namespace A makes A.foo() accessible in top-level
 *             statements, functions, and class methods
 */

declare namespace A {
    function foo(): void
    type X = number
}

A.foo() // Valid: accessible in top-level statements

function bar(): void {
    A.foo() // Valid: accessible inside function
}

class C {
    method(): void {
        A.foo() // Valid: accessible inside class method
        let x: A.X = 42 // Valid: type A.X can be used
    }
}
