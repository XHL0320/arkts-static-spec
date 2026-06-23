/**
 * @id SEM_15_01_033_RUNTIME_STANDALONE
 * @expect runtime
 * @section 15.1.1
 * @design 验证独立表达式运行时类型行为：整数字面量作为独立表达式推断正确
 * @note 运行时用例：独立推断的 int 类型变量在运行时值正确
 */
function main(): void {
    let x = 42;
    let y = 3.14;
    let z = x + 1;
    if (z != 43) { throw new Error("assertion failed: " + z.toString()); }
    console.log("verified");
}
