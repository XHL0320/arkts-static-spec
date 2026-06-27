/*
 * @id NSM_13_11_005_PASS_MAIN_FIXED_ARRAY
 * @expect compile-pass
 * @section 13.11
 * @design main with FixedArray<string> parameter is valid
 * @note spec: "Entry point function must either have no parameters,
 *             or have one parameter of type FixedArray<string>"
 */

function main(args: FixedArray<string>): int {
    return 0
}
