/*
 * @id NSM_13_11_007_RUNTIME_MAIN_INFERRED_RETURN
 * @expect runtime
 * @section 13.11
 * @design inferred return type from main() body
 * @note spec: "a return type is inferred from the body of main().
 *             It will be 'int' if the body has 'return' with the integer
 *             expression and 'void' if no return at all in the body"
 */

function main() {
    // Return type inferred as 'int' because body has return with int expr
    return 0
}
