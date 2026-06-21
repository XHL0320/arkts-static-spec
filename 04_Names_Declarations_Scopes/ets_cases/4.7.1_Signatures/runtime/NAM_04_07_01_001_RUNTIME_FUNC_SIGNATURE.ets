/**
 * @id NAM_04_07_01_001_RUNTIME_FUNC_SIGNATURE
 * @expect runtime
 * @section 4.7.1
 * @design 带签名的函数调用通过运行时
 * @note 运行时用例：验证函数签名在运行时正确
 */
function add(a: int, b: int): int { return a + b; }
function main(): void {
    let r: int = add(2, 3);
    if (r != 5) throw new Error("assertion failed: " + r);
}
