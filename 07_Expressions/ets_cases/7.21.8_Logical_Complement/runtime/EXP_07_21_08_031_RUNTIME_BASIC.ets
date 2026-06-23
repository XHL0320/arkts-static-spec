/**
 * @id EXP_07_21_08_031_RUNTIME_BASIC
 * @expect runtime
 * @section 7.21.8
 * @design 验证 !true=false, !false=true 运行时正确
 * @note 运行时用例：! 基本语义
 */
function main(): void {
    if (!true != false) {
        throw new Error("assertion failed: !true != false")
    }

    if (!false != true) {
        throw new Error("assertion failed: !false != true")
    }

    console.log("verified")
}
