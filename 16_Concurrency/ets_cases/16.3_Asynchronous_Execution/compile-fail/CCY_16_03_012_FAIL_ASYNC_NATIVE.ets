/**
 * @id CCY_16_03_012_FAIL_ASYNC_NATIVE
 * @expect compile-fail
 * @section 16.3
 * @design async 函数有 native 修饰
 * @note 反向用例：验证 async native 函数应编译错误
 */
declare native async function foo(): Promise<void>;
