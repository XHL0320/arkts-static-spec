/**
 * @id NAM_04_01_020_RUNTIME_SIMPLE_REF
 * @expect runtime
 * @section 4.1
 * @design 运行时简单名引用
 * @note 运行时用例：验证简单名称在运行时正确引用
 */
function main(): void {
    let a: number = 10;
    let b: number = a;
    if (b != 10) {
        throw new Error("assertion failed: " + b);
    }
    console.log("verified");
}
