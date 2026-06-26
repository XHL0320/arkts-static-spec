/**
 * @id EXP_07_19_033_RUNTIME_NULL_THROWS
 * @expect runtime
 * @section 7.19
 * @design 验证 null 值应用 ! 运行时抛出 NullPointerError
 * @runtime-throws=NullPointerError
 * @note 运行时用例：null! 运行时抛出 NullPointerError
 */
function main(): void {
    let x: int | null = null
    let y: int = x!
    // should not reach here
    console.log("verified")
}
