/**
 * @id EXP_07_25_01_032_RUNTIME_STRING_NUMERIC
 * @expect runtime
 * @section 7.25.1
 * @design 验证 string + int/double 运行时拼接结果正确
 * @note 运行时用例：数值类型在字符串上下文中转为十进制字符串
 */
function main(): void {
    let r1: string = "val=" + 42;
    if (r1 != "val=42") {
        throw new Error("assert failed: " + r1);
    }
    let r2: string = "pi=" + 3.14;
    if (r2 != "pi=" + "3.14") {
        throw new Error("assert failed: " + r2);
    }
    console.log("verified");
}
