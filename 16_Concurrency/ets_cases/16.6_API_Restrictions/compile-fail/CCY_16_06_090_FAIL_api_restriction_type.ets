/**
 * @id CCY_16_06_090_FAIL_api_restriction_type
 * @expect compile-fail
 * @section 16.6
 * @design API 限制类型错误
 * @note 反向用例：验证 Promise API 类型不匹配应编译报错
 */
function main(): void {
    let p: Promise<number> = new Promise<number>((): void => {});
    p.then(42);
}
