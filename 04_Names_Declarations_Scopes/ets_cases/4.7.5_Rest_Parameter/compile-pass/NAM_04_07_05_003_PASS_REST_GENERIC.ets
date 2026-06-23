/**
 * @id NAM_04_07_05_003_PASS_REST_GENERIC
 * @expect compile-pass
 * @section 4.7.5
 * @design rest参数-泛型类型参数
 * @note 正向用例：验证泛型类型参数作为 rest 参数
 */
function sumGen<T extends Array<number>>(...numbers: T): number {
    let res: number = 0;
    for (let n of numbers) {
        res += n;
    }
    return res;
}
