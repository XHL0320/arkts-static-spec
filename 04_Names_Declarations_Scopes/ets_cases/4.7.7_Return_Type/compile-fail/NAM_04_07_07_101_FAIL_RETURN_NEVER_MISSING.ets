/**
 * @id NAM_04_07_07_101_FAIL_RETURN_NEVER_MISSING
 * @expect compile-fail
 * @section 4.7.7
 * @design never返回类型缺少退出
 * @note 反向用例：验证 never 类型缺少 throw/return 编译错误
 */
function fooNever(): never {}
