/**
 * @id CCY_16_03_05_092_FAIL_promise_resolve_wrong_type
 * @expect compile-fail
 * @section 16.3.5
 * @design Promise.resolve 类型不匹配
 * @note 反向用例：验证 Promise.resolve 参数类型不匹配编译报错
 */
function main(): void {
    let p: Promise<string> = Promise.resolve(42);
}
