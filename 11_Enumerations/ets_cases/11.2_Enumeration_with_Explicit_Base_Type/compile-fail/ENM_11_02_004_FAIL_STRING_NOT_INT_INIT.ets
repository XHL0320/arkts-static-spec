/**
 * @id ENM_11_02_004_FAIL_STRING_NOT_INT_INIT
 * @expect compile-fail
 * @section 11.2
 * @design string 基类下 int 初始化器 → 不兼容应错误
 * @note 反向用例：string { A = 42 }
 */
enum Wrong4: string { A = 42 }