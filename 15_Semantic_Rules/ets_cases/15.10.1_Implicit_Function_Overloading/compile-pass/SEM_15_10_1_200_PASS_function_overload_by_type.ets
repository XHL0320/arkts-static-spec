/**
 * @id SEM_15_10_1_200_PASS_function_overload_by_type
 * @expect compile-pass
 * @section 15.10.1
 * @design Function overload by parameter type resolves correctly
 * @note Spec lines 18-26
 */
function foo(p: number): void { console.log("number") }
function foo(p: string): void { console.log("string") }
function main(): void {
    foo(5)
    foo("5")
}
