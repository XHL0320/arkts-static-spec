/**
 * @id ENM_11_03_006_FAIL_STRING_BASE_NO_INIT
 * @expect compile-fail
 * @section 11.3
 * @design string 基类且无初始化器 → 编译错误（spec E4）
 * @note 反向用例
 */
enum E6: string { A, B }