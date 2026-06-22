/**
 * @id ENM_11_02_002_FAIL_NON_INT_BASE_NO_INIT
 * @expect compile-fail
 * @section 11.2
 * @design 非整数基类且无初始化器 → 编译错误（spec Wrong1 原例）
 * @note 反向用例：double { A, B, C } 必须初始化
 */
enum Wrong2: double { A, B, C }