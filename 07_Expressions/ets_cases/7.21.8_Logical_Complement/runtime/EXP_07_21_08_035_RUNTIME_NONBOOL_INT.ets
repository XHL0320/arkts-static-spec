/**
 * @id EXP_07_21_08_035_RUNTIME_NONBOOL_INT
 * @expect runtime
 * @section 7.21.8
 * @design 验证 !int 运行时 truthy/falsy 语义
 * @note 运行时用例：!0=true（falsy），!非零=false（truthy）
 */
function main(): void {
    // non-zero → truthy → ! = false
    if (!42 != false) {
        throw new Error("assertion failed: !42 != false")
    }
    // zero → falsy → ! = true
    if (!0 != true) {
        throw new Error("assertion failed: !0 != true")
    }
    // negative → truthy → ! = false
    if (!(-1) != false) {
        throw new Error("assertion failed: !(-1) != false")
    }

    console.log("verified")
}
