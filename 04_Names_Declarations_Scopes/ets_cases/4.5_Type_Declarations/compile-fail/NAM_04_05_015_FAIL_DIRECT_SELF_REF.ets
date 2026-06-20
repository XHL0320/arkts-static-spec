/**
 * @id NAM_04_05_015_FAIL_DIRECT_SELF_REF
 * @expect compile-fail
 * @section 4.5.1
 * @design 直接自身递归
 * @note 反向用例：验证直接自身递归编译错误
 */
type E = E;
