/**
 * @id EXP_07_10_01_011_RUNTIME_READONLY_STATIC_VALUE
 * @expect runtime
 * @section 7.10.1
 * @design 运行时验证 readonly 静态字段值：只读字段在运行时保持不变
 * @note 运行时用例：验证 readonly 静态字段的 value 语义，声明后值不变
 */
class Limits {
    static readonly MAX: int = 100
    static readonly MIN: int = 1
}
function main(): void {
    let max: int = Limits.MAX
    let min: int = Limits.MIN
    if (max != 100) {
        throw new Error("assertion failed: readonly MAX value")
    }
    if (min != 1) {
        throw new Error("assertion failed: readonly MIN value")
    }
    console.log("verified")
}
