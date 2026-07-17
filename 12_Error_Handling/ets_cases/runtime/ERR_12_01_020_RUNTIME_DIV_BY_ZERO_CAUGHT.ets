/**
 * @id ERR_12_01_020_RUNTIME_DIV_BY_ZERO_CAUGHT
 * @expect runtime
 * @section 12
 * @design 除零错误可在try-catch中捕获
 * @note spec: division by zero is a runtime error
 */
function main(): void {
    try {
        let x: int = 1 / 0
    } catch (e) {
        console.log("verified")
    }
}
