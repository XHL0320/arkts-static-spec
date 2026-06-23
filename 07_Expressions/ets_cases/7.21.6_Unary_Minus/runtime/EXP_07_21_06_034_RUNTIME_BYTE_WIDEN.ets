/**
 * @id EXP_07_21_06_034_RUNTIME_BYTE_WIDEN
 * @expect runtime
 * @section 7.21.6
 * @design 验证 -byte 运行时值正确，结果拓宽为 int。
 *         -byte(10)=-10(int), -byte(-128)=128(int)。
 * @note 运行时用例：-byte → int 拓宽求反
 */
function main(): void {
    let a: byte = 10;
    let r1: int = -a;
    if (r1 != -10) {
        throw new Error("assertion failed: expected -byte(10)=-10, got " + r1);
    }
    let b: byte = -128;
    let r2: int = -b;
    if (r2 != 128) {
        throw new Error("assertion failed: expected -byte(-128)=128, got " + r2);
    }
    console.log("verified");
}
