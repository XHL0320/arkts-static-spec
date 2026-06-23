/**
 * @id EXP_07_27_04_021_RUNTIME_BASIC
 * @expect runtime
 * @section 7.27.4
 * @design 验证 boolean 关系运算符完整真值表：4 运算符 × 4 组合 = 16 个结果
 * @note 运行时用例：使用 true/false 文字量验证全部 16 个真值表条目
 *       真值表参见 test_design_mindmap_7.27.4.md
 */
function main(): void {
    // < 运算符真值表
    if ((false < false) != false) { throw new Error("assertion failed: false < false"); }
    if ((false < true) != true) { throw new Error("assertion failed: false < true"); }
    if ((true < false) != false) { throw new Error("assertion failed: true < false"); }
    if ((true < true) != false) { throw new Error("assertion failed: true < true"); }

    // <= 运算符真值表
    if ((false <= false) != true) { throw new Error("assertion failed: false <= false"); }
    if ((false <= true) != true) { throw new Error("assertion failed: false <= true"); }
    if ((true <= false) != false) { throw new Error("assertion failed: true <= false"); }
    if ((true <= true) != true) { throw new Error("assertion failed: true <= true"); }

    // > 运算符真值表
    if ((false > false) != false) { throw new Error("assertion failed: false > false"); }
    if ((false > true) != false) { throw new Error("assertion failed: false > true"); }
    if ((true > false) != true) { throw new Error("assertion failed: true > false"); }
    if ((true > true) != false) { throw new Error("assertion failed: true > true"); }

    // >= 运算符真值表
    if ((false >= false) != true) { throw new Error("assertion failed: false >= false"); }
    if ((false >= true) != false) { throw new Error("assertion failed: false >= true"); }
    if ((true >= false) != true) { throw new Error("assertion failed: true >= false"); }
    if ((true >= true) != true) { throw new Error("assertion failed: true >= true"); }

    console.log("verified");
}
