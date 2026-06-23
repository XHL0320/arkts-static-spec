/**
 * @id NAM_04_07_200_RUNTIME_FUNC_CALL
 * @expect runtime
 * @section 4.7
 * @design 函数调用运行时
 * @note 运行时用例：验证函数调用执行正确
 */
function add(a: number, b: number): number {
    return a + b;
}
function main(): void {
    if (add(3, 4) != 7) {
        throw new Error("assertion failed: " + add(3, 4));
    }
    console.log("verified");
}
