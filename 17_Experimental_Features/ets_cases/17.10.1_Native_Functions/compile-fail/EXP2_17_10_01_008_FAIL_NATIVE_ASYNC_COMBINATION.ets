/**
 * @id EXP2_17_10_01_008_FAIL_NATIVE_ASYNC_COMBINATION
 * @expect compile-fail
 * @section 17.10.1
 * @design native 与 async 不能组合使用：验证 native async function 产生编译错误 ESY0203
 * @note 反向用例：验证该场景应产生编译时错误 - 'native' flags must be used for functions only at top-level
 */
native async function baz(): void
