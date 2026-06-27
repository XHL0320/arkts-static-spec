/*
 * @id NSM_13_07_003_RUNTIME_EXPORT_DIRECTIVE
 * @expect runtime
 * @section 13.7
 * @design Export directive runtime access
 */

let counter: int = 0
export counter

function main(): int {
    console.log(counter.toString())
    return counter == 0 ? 0 : 1
}
