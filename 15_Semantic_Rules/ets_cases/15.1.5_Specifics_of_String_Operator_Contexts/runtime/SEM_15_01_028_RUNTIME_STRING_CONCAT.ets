/**
 * @id SEM_15_01_028
 * @expect runtime
 * @section 15.1.5
 * @design 验证字符串拼接运行时行为
 * @note 运行时用例：字符串 + 数值拼接结果正确
 */
function main(): void {
    let s: string = "value: ";
    let n: int = 42;
    let r: string = s + n;
    if (r != "value: 42") {
        throw new Error("assertion failed: expected 'value: 42' got '" + r + "'");
    }
    console.log("verified");
}
