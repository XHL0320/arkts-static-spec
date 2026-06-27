/*
 * @id NSM_13_05_004_RUNTIME_TOP_DECL_ORDER
 * @expect runtime
 * @section 13.5
 * @design Top-level declarations execution order
 */

let x: int = 10

function add(a: int, b: int): int {
    return a + b
}

function main(): int {
    let result: int = add(x, 5)
    console.log(result.toString())
    return result == 15 ? 0 : 1
}
