/*
 * @id NSM_13_11_006_FAIL_MAIN_OVERLOAD
 * @expect compile-fail
 * @section 13.11
 * @design main function cannot be overloaded
 * @note spec: "Entry point function cannot be overloaded"
 */

function main(): void {}
function main(args: FixedArray<string>): int {
    return 0
}
// Compile-time error: main cannot be overloaded
