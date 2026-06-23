/**
 * @id SEM_15_07_02_200_RUNTIME_RETURN
 * @expect runtime
 * @section 15.7.2
 * @design 验证返回类型运行时行为
 * @note 运行时用例：函数返回值在运行时正确
 */
function add(a: int, b: int): int { return a + b; }
function main(): void {
    let r: int = add(20, 22);
    if (r != 42) { throw new Error("assertion failed: " + r.toString()); }
    console.log("verified");
}
