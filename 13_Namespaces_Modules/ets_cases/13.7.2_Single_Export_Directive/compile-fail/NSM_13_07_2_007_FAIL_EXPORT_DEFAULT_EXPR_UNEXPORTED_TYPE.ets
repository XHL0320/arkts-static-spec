/*
 * @id NSM_13_07_2_007_FAIL_EXPORT_DEFAULT_EXPR_UNEXPORTED_TYPE
 * @expect compile-fail
 * @section 13.7.2
 * @design export default expression with unexported type
 * @note D类: Spec §13.6 example shows export default new A is valid
 *             when A is not exported, but es2panda enforces that A must be
 *             exported (ESE1236581: Type 'A' used in export declaration(s)
 *             is not exported)
 */

class A {
    foo(): void {}
}

// es2panda: compile-time error (A not exported)
// Spec: this should be valid (anonymous constant variable)
export default new A
