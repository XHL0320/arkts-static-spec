/**
 * @id NAM_04_05_016_FAIL_UNION_SELF_REF
 * @expect compile-fail
 * @section 4.5.1
 * @design 联合类型自身递归
 * @note 反向用例：验证联合中自身递归编译错误
 */
type F = string | F;
