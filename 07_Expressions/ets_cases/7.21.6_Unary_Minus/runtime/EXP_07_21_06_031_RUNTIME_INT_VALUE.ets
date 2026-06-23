/**
 * @id EXP_07_21_06_031_RUNTIME_INT_VALUE
 * @expect runtime
 * @section 7.21.6
 * @design 验证 -int 运行时正确求反。
 *         -5=-5, -(-3)=3。
 * @note 运行时用例：-int 求反值正确
 */
function main(): void {
    let a: int = 5;
    let r1: int = -a;
    if (r1 != -5) {
        throw new Error("assertion failed: expected -5=-5, got " + r1);
    }
    let b: int = -3;
    let r2: int = -b;
    if (r2 != 3) {
        throw new Error("assertion failed: expected -(-3)=3, got " + r2);
    }
    console.log("verified");
}
