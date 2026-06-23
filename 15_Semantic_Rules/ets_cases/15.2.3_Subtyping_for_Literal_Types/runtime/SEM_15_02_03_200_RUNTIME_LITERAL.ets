/**
 * @id SEM_15_02_03_200_RUNTIME_LITERAL
 * @expect runtime
 * @section 15.2.3
 * @design 验证字符串字面量子类型运行时行为
 * @note 运行时用例："hello" 字面量赋值给 string 后值正确
 */
function main(): void {
    let lit: "hello" = "hello";
    let s: string = lit;
    if (s != "hello") { throw new Error("assertion failed"); }
    console.log("verified");
}
