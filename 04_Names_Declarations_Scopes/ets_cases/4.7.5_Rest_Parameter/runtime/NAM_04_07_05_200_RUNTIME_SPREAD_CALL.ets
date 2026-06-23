/**
 * @id NAM_04_07_05_200_RUNTIME_SPREAD_CALL
 * @expect runtime
 * @section 4.7.5
 * @design spread 数组到 rest 参数运行时正确
 * @note 运行时用例：验证 spread 运算符传递数组给 rest 参数结果正确（§4.7.5 行 1158-1176）
 */
function sum(...numbers: number[]): number {
    let res: number = 0;
    for (let n of numbers) {
        res += n;
    }
    return res;
}
function main(): void {
    let arr: number[] = [1, 2, 3];
    let r: number = sum(...arr);
    if (r != 6) { throw new Error("assertion failed: " + r); }
    console.log("verified");
}
