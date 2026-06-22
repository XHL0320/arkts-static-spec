/**
 * @id ENM_11_01_005_FAIL_MIXED_BASE
 * @expect compile-fail
 * @section 11.1
 * @design int+string 混合初始化器 → 基类无法推断应编译错误
 * @note 反向用例：spec 原例
 */
enum E5 { A = 5, B = "hello" }