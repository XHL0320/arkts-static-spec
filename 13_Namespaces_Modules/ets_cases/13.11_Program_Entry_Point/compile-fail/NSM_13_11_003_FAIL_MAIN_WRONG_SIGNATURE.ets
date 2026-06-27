/*
 * @id NSM_13_11_003_FAIL_MAIN_WRONG_SIGNATURE
 * @expect compile-fail
 * @section 13.11
 * @design Entry point function must have no parameters or one
 *                   FixedArray<string> parameter; return type must be void or int;
 *                   cannot be overloaded → compile-time error for wrong signature
 */

function main(): string { // Compile-time error: incorrect return type
    return ""
}

function main(p: number) { // Compile-time error: incorrect parameter type
}
