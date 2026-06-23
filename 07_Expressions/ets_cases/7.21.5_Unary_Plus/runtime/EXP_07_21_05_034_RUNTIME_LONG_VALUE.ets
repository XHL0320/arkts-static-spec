/**
 * @id EXP_07_21_05_034_RUNTIME_LONG_VALUE
 * @expect runtime
 * @section 7.21.5
 * @design 验证 +long 运行时返回正确的值。long 保持 long。
 * @note 运行时用例：+long 值正确
 */
function main(): void {
    let x: long = 10000000000;
    let r: long = +x;
    if (r != 10000000000) {
        throw new Error("assertion failed: expected +10000000000=10000000000, got " + r);
    }
    console.log("verified");
}
