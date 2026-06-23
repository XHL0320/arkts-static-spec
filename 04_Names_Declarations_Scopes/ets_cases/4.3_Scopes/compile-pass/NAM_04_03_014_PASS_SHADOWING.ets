/**
 * @id NAM_04_03_014_PASS_SHADOWING
 * @expect compile-pass
 * @section 4.3
 * @design 变量覆盖编译验证
 * @note 运行时用例：验证内层覆盖外层在运行时正确
 */
let value: number = 1;
function testShadow(): number {
    let value: number = 2;
    return value;
}
function main(): void {
    if (testShadow() != 2) {
        throw new Error("assertion failed: " + testShadow());
    }
    console.log("verified");
}
