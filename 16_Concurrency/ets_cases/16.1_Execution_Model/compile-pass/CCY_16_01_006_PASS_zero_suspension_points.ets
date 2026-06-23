/**
 * @id CCY_16_01_006_PASS_zero_suspension_points
 * @expect compile-pass
 * @section 16.1
 * @design job 可以没有悬挂点（同步函数）
 * @note 正向用例：普通函数没有悬挂点，执行不中断
 */
function noSuspension(): number {
    let x: number = 1;
    let y: number = 2;
    return x + y;
}

function main(): void {
    let r: number = noSuspension();
    console.log(r.toString());
}
