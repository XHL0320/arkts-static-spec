/**
 * @id NAM_04_06_01_200_RUNTIME_VAR_OPS
 * @expect runtime
 * @section 4.6.1
 * @design 变量运行时读写
 * @note 运行时用例：验证变量声明和读写运行时正确
 */
function main(): void {
    let x: number = 10;
    x = x + 5;
    if (x != 15) {
        throw new Error("assertion failed: " + x);
    }
    console.log("verified");
}
