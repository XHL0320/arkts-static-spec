/**
 * @id NAM_04_07_03_200_RUNTIME_READONLY_PARAM
 * @expect runtime
 * @section 4.7.3
 * @design 只读参数读取通过运行时
 * @note 运行时用例：验证只读参数在运行时可读
 */
function foo(x: int): int { return x; }
function main(): void {
    let r: int = foo(99);
    if (r != 99) throw new Error("assertion failed: " + r);
}
