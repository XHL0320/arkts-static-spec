/*
 * @id NSM_13_07_2_005_PASS_EXPORT_AS_DEFAULT
 * @expect compile-pass
 * @section 13.7.2
 * @design export { identifier as default } syntax
 * @note spec example: class A {}; export default A; export {A as default}
 *             — both syntax forms are acceptable
 */

class A {}

export { A as default }
