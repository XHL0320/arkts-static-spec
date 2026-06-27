/*
 * @id NSM_13_07_2_003_FAIL_EXPORT_DEFAULT_MULTIPLE
 * @expect compile-fail
 * @section 13.7.2
 * @design If default is present, only one such export directive is
 *                   possible in the current module → compile-time error
 */

class A {}
export default A
class B {}
export default B // Compile-time error: multiple export default
