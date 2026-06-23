/**
 * @id NAM_04_07_01_100_FAIL_RETURN_TYPE_MISMATCH
 * @expect compile-fail
 * @section 4.7.1
 * @design 函数签名返回类型与实现不匹配
 * @note 反向用例：返回类型不一致时应报错
 */
function foo(): int { return "string"; }
