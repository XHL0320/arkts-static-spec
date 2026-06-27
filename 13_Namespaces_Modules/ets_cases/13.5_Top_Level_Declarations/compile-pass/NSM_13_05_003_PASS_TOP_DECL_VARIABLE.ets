/*
 * @id NSM_13_05_003_PASS_TOP_DECL_VARIABLE
 * @expect compile-pass
 * @section 13.5
 * @design Top-level variable and constant declarations
 */

let counter: int = 0
const MAX_VALUE: int = 100

function main(): void {
    counter++
    console.log(counter.toString())
}
