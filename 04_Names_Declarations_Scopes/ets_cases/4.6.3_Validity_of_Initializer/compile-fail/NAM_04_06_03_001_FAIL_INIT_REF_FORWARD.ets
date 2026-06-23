/**
 * @id NAM_04_06_03_001_FAIL_INIT_REF_FORWARD
 * @expect compile-fail
 * @section 4.6.3
 * @design 初始化引用后文声明
 * @note 反向用例：验证初始化表达式引用后文声明编译错误
 */
const a_fwd: number = b_fwd;
let b_fwd = 1;
