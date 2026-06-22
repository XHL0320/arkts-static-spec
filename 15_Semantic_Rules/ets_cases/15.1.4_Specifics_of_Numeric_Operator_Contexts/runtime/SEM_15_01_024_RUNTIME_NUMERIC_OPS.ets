/**
 * @id SEM_15_01_024
 * @expect runtime
 * @section 15.1.4
 * @design 验证数值运算符运行时行为
 * @note 运行时用例：数值运算结果正确
 */
function main(): void {
    let a: int = 10;
    let b: int = 20;
    let c: int = a + b;
    let d: int = b - a;
    if (c != 30) { throw new Error("add failed"); }
    if (d != 10) { throw new Error("sub failed"); }
    console.log("verified");
}
