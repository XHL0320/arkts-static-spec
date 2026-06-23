/**
 * @id NAM_04_06_02_200_RUNTIME_CONST_OPS
 * @expect runtime
 * @section 4.6.2
 * @design 常量运行时不可赋值
 * @note 运行时用例：验证常量值不可变
 */
function main(): void {
    const x: number = 42;
    if (x != 42) {
        throw new Error("assertion failed: " + x);
    }
    console.log("verified");
}
