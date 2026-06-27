/*
 * @id NSM_13_08_002_PASS_TOP_LEVEL_ORDER
 * @expect compile-pass
 * @section 13.8
 * @design Declarations logically precede statements
 *                   (declarations then statements in logical order)
 */

function foo(): void {
    console.log("foo called")
}

console.log("Top-level statement after declaration")
