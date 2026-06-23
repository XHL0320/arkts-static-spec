/**
 * @id CCY_16_03_05_091_FAIL_promise_new_no_type_arg
 * @expect compile-fail
 * @section 16.3.5
 * @design Promise 构造缺少类型参数
 * @note 反向用例：验证 Promise 构造缺少泛型参数编译报错
 */
function main(): void {
    let p: Promise<number> = new Promise((resolve: (v: number) => void) => {});
}
