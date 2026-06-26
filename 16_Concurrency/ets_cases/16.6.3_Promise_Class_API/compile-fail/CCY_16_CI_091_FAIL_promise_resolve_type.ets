/**
 * @id CCY_16_CI_091_FAIL_promise_resolve_type
 * @expect compile-fail
 * @section 16.6.3
 * @design 交叉集成错误：Promise.resolve 类型不匹配
 * @note 反向用例：验证 Promise 泛型参数与实际值类型不匹配应编译报错
 */
function main(): void {
    let p: Promise<string> = Promise.resolve<number>(42);
}
