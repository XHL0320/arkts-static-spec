/**
 * @id EXP_07_25_01_031_RUNTIME_STRING_STRING
 * @expect runtime
 * @section 7.25.1
 * @design 验证 string + string 运行时拼接结果正确
 * @note 运行时用例：两个字符串拼接为 LHS+RHS
 */
function main(): void {
    let s: string = "Hello" + "World";
    if (s != "HelloWorld") {
        throw new Error("assert failed: " + s);
    }
    console.log("verified");
}
