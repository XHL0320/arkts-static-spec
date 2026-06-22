/**
 * @id ENM_11_01_006_FAIL_STRING_NO_INIT
 * @expect compile-fail
 * @section 11.1
 * @design string 推断基类时非首成员无初始化器应编译错误
 * @note 反向用例：string 基类不能自动递增
 */
enum E6 { A = "a", B }