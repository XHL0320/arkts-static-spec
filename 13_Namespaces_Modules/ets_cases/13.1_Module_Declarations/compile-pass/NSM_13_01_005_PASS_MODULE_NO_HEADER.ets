/*
 * @id NSM_13_01_005_PASS_MODULE_NO_HEADER
 * @expect compile-pass
 * @section 13.1
 * @design Module without explicit module header is valid
 *                   (moduleDeclaration: moduleHeader? ...)
 */

export let greeting: string = "Hello"

function main(): void {
    console.log(greeting)
}
