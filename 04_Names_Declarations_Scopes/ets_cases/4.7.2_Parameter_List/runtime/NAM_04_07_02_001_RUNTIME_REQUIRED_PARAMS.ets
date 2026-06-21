/**
 * @id NAM_04_07_02_001_RUNTIME_REQUIRED_PARAMS
 * @expect runtime
 * @section 4.7.2
 * @design 必需参数传递到函数并正确使用
 * @note 运行时用例：验证必需参数在运行时正确
 */
function add(a: int, b: int): int { return a + b; }
function main(): void {
    let r: int = add(10, 20);
    if (r != 30) throw new Error("assertion failed: " + r);
}
