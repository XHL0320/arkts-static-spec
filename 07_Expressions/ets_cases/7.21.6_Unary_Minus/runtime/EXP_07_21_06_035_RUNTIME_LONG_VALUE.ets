/**
 * @id EXP_07_21_06_035_RUNTIME_LONG_VALUE
 * @expect runtime
 * @section 7.21.6
 * @design 验证 -long 运行时值正确。long 保持 long。
 * @note 运行时用例：-long 求反值正确
 */
function main(): void {
    let x: long = 10000000000;
    let r: long = -x;
    if (r != -10000000000) {
        throw new Error("assertion failed: expected -10000000000, got " + r);
    }
    let y: long = -10000000000;
    let r2: long = -y;
    if (r2 != 10000000000) {
        throw new Error("assertion failed: expected -(-10000000000)=10000000000, got " + r2);
    }
    console.log("verified");
}
