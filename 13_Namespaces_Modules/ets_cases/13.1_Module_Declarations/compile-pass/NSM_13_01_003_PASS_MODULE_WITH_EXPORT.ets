/*
 * @id NSM_13_01_003_PASS_MODULE_WITH_EXPORT
 * @expect compile-pass
 * @section 13.1
 * @design Module with exported declarations
 */

export function add(a: int, b: int): int {
    return a + b
}

export let value: int = 42

function main(): void {
    console.log(add(value, 1).toString())
}
