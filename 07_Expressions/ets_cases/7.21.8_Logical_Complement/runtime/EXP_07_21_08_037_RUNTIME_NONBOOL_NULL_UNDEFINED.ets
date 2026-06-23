/**
 * @id EXP_07_21_08_037_RUNTIME_NONBOOL_NULL_UNDEFINED
 * @expect runtime
 * @section 7.21.8
 * @design 验证 !null / !undefined / !Object 运行时 truthy/falsy 语义
 * @note 运行时用例：null/undefined → falsy → ! = true; Object → truthy → ! = false
 */
function main(): void {
    if (!null != true) {
        throw new Error("assertion failed: !null != true")
    }
    if (!undefined != true) {
        throw new Error("assertion failed: !undefined != true")
    }
    let o: Object = new Object()
    if (!o != false) {
        throw new Error("assertion failed: !Object != false")
    }
    console.log("verified")
}
