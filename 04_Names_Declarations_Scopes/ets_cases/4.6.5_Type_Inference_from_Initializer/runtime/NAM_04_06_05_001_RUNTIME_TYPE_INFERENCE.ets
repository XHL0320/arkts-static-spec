/**
 * @id NAM_04_06_027_RUNTIME_TYPE_INFERENCE
 * @expect runtime
 * @section 4.6.5
 * @design 类型推断运行时正确
 * @note 运行时用例：验证推断类型在运行时的行为正确
 */
function main(): void {
    let x = 1;
    let y = 2;
    if (x + y != 3) {
        throw new Error("assertion failed: " + (x + y));
    }
    console.log("verified");
}
