/**
 * @id EXP_07_19_032_RUNTIME_UNDEFINED_THROWS
 * @expect runtime
 * @section 7.19
 * @design 验证 undefined 值应用 ! 运行时抛出 NullPointerError
 * @runtime-throws=NullPointerError
 * @note 运行时用例：undefined! 运行时抛出 NullPointerError
 */
function main(): void {
    let x: int | undefined = undefined
    let y: int = x!
    // should not reach here
    console.log("verified")
}
