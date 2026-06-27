/**
 * @id CCY_16_01_099_FAIL_placeholder
 * @expect compile-fail
 * @section 16.1
 * @design 执行模型：await 在非 async 函数中
 * @note 反向用例：普通函数中不允许使用 await
 */
function foo(): void {
    await Promise.resolve(42);
}
