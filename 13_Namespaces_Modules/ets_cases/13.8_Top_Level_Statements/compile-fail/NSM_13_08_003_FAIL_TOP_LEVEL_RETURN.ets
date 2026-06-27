/*
 * @id NSM_13_08_003_FAIL_TOP_LEVEL_RETURN
 * @expect compile-fail
 * @section 13.8
 * @design A compile-time error occurs if top-level statements
 *                   contain a return statement
 */

console.log("Top-level statement")
return 0 // Compile-time error: return in top-level statement
