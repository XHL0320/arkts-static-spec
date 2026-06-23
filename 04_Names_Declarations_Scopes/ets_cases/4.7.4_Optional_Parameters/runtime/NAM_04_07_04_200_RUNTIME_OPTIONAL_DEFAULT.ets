/**
 * @id NAM_04_07_04_200_RUNTIME_OPTIONAL_DEFAULT
 * @expect runtime
 * @section 4.7.4
 * @design 可选参数默认值运行时
 * @note 运行时用例：验证可选参数默认值在省略时生效
 */
function pair(x: number, y: number = 7): number {
    return x + y;
}
function main(): void {
    let r1 = pair(1, 2);
    if (r1 != 3) {
        throw new Error("assertion failed: " + r1);
    }
    let r2 = pair(1);
    if (r2 != 8) {
        throw new Error("assertion failed: " + r2);
    }
    let r3 = pair(1, undefined);
    if (r3 != 8) {
        throw new Error("assertion failed: " + r3);
    }
    console.log("verified");
}
