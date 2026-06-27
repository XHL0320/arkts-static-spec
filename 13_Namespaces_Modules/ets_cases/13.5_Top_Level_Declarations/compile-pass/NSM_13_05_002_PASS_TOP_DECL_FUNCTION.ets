/*
 * @id NSM_13_05_002_PASS_TOP_DECL_FUNCTION
 * @expect compile-pass
 * @section 13.5
 * @design Top-level function declaration
 */

function greet(name: string): string {
    return "Hello, " + name
}

function main(): void {
    console.log(greet("World"))
}
