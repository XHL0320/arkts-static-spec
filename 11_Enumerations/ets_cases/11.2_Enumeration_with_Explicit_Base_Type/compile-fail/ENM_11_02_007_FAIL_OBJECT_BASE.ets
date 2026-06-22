/**
 * @id ENM_11_02_007_FAIL_OBJECT_BASE
 * @expect compile-fail
 * @section 11.2
 * @design Object 作显式基类应编译错误
 * @note 反向用例：显式类型非数值/string
 */
enum Bad7: Object { A = null }