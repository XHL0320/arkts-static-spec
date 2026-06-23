/**
 * @id EXP_07_21_06_033_RUNTIME_SHORT_WIDEN
 * @expect runtime
 * @section 7.21.6
 * @design 验证 -short 运行时值正确，结果拓宽为 int。
 *         -short(1)=-1(int), -short(-1)=1(int)。
 * @note 运行时用例：-short → int 拓宽求反
 */
function main(): void {
    let a: short = 1;
    let r1: int = -a;
    if (r1 != -1) {
        throw new Error("assertion failed: expected -short(1)=-1, got " + r1);
    }
    let b: short = -1;
    let r2: int = -b;
    if (r2 != 1) {
        throw new Error("assertion failed: expected -short(-1)=1, got " + r2);
    }
    console.log("verified");
}
