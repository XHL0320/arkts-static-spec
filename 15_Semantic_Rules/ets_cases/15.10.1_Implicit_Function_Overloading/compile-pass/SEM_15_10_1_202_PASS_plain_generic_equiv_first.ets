/**
 * @id SEM_15_10_1_202_PASS_plain_generic_equiv_first
 * @expect compile-pass
 * @section 15.10.1
 * @design Plain before generic: plain bar() called
 * @note Spec lines 30-54: bar(x: number) then bar<T>(x: T)
 */
function bar(x: number): void { console.log("plain") }
function bar<T>(x: T): void { console.log("generic") }
function main(): void {
    bar(1)
}
