/**
 * @id EXP_07_25_01_034_RUNTIME_STRING_BIGINT
 * @expect runtime
 * @section 7.25.1
 * @design 验证 string + bigint 运行时拼接结果正确
 * @note 运行时用例：bigint 在字符串上下文中转为十进制字符串
 */
function main(): void {
    let r1: string = "big=" + 100n;
    if (r1 != "big=100") {
        throw new Error("assert failed: " + r1);
    }
    let a: bigint = 12345678901234567890n;
    let r2: string = "val=" + a;
    if (r2 != "val=12345678901234567890") {
        throw new Error("assert failed: " + r2);
    }
    console.log("verified");
}
