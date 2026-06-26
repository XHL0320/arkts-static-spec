/**
 * @id ENM_11_03_005_FAIL_NON_INT_NO_INIT
 * @expect compile-fail
 * @section 11.3
 * @design 非整数基类且无初始化器 → 编译错误（spec E5）
 * @note 反向用例：E5: double { C, D }
 */
enum E5: double { C, D }