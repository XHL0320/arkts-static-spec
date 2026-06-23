/**
 * @id NAM_04_07_05_001_PASS_REST_ARRAY
 * @expect compile-pass
 * @section 4.7.5
 * @design rest参数-数组类型
 * @note 正向用例：验证数组类型 rest 参数
 */
function sum(...numbers: number[]): number {
    let res: number = 0;
    for (let n of numbers) {
        res += n;
    }
    return res;
}
