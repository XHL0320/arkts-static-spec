/**
 * @id ENM_11_009_FAIL_DUPLICATE_NAME
 * @expect compile-fail
 * @section 11
 * @design 枚举成员名重复应编译错误
 * @note 反向用例
 */
enum E9 { A = 5, A = 77 }