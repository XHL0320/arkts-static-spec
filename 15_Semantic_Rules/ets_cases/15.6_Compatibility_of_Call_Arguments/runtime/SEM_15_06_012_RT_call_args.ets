/**
 * @id SEM_15_06_012
 * @expect runtime
 * @section 15.6
 * @design 验证调用参数运行时行为：参数传递正确
 * @note 运行时用例：函数参数在运行时值正确
 */
function add(a: int, b: int): int { return a + b; }
function main(): void {
    let r: int = add(20, 22);
    if (r != 42) { throw new Error("assertion failed: " + r.toString()); }
    console.log("verified");
}
