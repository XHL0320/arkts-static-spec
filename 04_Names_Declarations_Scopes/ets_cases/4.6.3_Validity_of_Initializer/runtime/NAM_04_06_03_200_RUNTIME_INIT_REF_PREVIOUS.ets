/**
 * @id NAM_04_06_03_200_RUNTIME_INIT_REF_PREVIOUS
 * @expect runtime
 * @section 4.6.3
 * @design 初始化引用前一声明，运行时值正确
 * @note 运行时用例：验证前向引用通过编译且值正确
 */
function main(): void {
    let a: int = 1;
    let b: int = a;
    if (b != 1) throw new Error("assertion failed: " + b);
}
