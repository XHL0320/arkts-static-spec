/*
 * @id NSM_13_08_005_RUNTIME_TOP_LEVEL_EXEC
 * @expect runtime
 * @section 13.8
 * @design Top-level statements executed once, declarations precede statements
 */

let x: int = 10
let y: int = 20

x = x + y

function main(): int {
    console.log(x.toString())
    return x == 30 ? 0 : 1
}
