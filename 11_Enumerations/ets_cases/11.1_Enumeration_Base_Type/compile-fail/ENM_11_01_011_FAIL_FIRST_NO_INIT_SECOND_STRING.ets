/**
 * @id ENM_11_01_011_FAIL_FIRST_NO_INIT_SECOND_STRING
 * @expect compile-fail
 * @section 11.1
 * @design 首成员无初始化器，次成员 string → int 推断失败
 * @note 反向用例：spec E3 原例
 */
enum E11 { A, B = "hello" }