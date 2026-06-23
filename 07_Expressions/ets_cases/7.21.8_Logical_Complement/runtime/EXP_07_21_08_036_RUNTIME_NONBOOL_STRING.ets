/**
 * @id EXP_07_21_08_036_RUNTIME_NONBOOL_STRING
 * @expect runtime
 * @section 7.21.8
 * @design 验证 !string 运行时 truthy/falsy 语义
 * @note 运行时用例：!""=true（空串 falsy），!非空=false（truthy）
 */
function main(): void {
    if (!"hello" != false) {
        throw new Error("assertion failed: !string(hello) != false")
    }
    if (!"" != true) {
        throw new Error("assertion failed: !string(empty) != true")
    }
    console.log("verified")
}
