/**
 * @id NAM_04_05_01_003_RUNTIME_VECTOR_EXAMPLE
 * @expect runtime
 * @section 4.5.1
 * @design type alias 作为新名称，不改变原始类型语义
 * @note 运行时用例：验证 spec 中 Vector 示例（§4.5.1 行 461-477）type alias 运行时行为正确
 */
type Vector = number[];
function max(x: Vector): number {
    let m: number = x[0];
    for (let v of x) {
        if (v > m) { m = v; }
    }
    return m;
}
function main(): void {
    let x: Vector = [2, 3, 1];
    let r: number = max(x);
    if (r != 3) { throw new Error("assertion failed: " + r); }
    console.log("verified");
}
