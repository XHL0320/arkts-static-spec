/**
 * @id SEM_15_10_03_002_PASS_constructor_overload
 * @expect compile-pass
 * @section 15.10.3
 * @design Implicit constructor overloading by parameter type
 * @note Spec lines 14-26
 */
class BigFloat {
    constructor(n: number) { console.log("number") }
    constructor(s: string) { console.log("string") }
}
function main(): void {
    new BigFloat(1)
    new BigFloat("3.14")
}
