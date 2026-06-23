/**
 * @id SEM_15_10_1_201_PASS_generic_plain_equiv_first
 * @expect compile-pass
 * @section 15.10.1
 * @design Generic before plain: instantiation with T=number, textually first used
 * @note Spec lines 30-54: foo<T>(x: T) then foo(x: number)
 */
function foo<T>(x: T): void { console.log("generic") }
function foo(x: number): void { console.log("plain") }
function main(): void {
    foo(1)
}
