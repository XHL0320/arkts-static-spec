/**
 * @id NAM_04_07_021_FAIL_NATIVE_WITH_BODY
 * @expect compile-fail
 * @section 4.7
 * @design native函数有函数体
 * @note 反向用例：验证 native 函数不能有函数体
 */
native function nativeBad(): void {}
