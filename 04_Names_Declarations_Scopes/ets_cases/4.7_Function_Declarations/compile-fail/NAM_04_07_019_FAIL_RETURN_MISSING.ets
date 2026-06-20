/**
 * @id NAM_04_07_019_FAIL_RETURN_MISSING
 * @expect compile-fail
 * @section 4.7.7
 * @design 缺少return或throw
 * @note 反向用例：验证非void返回类型缺少return编译错误
 */
function fooMissing(): number {}
