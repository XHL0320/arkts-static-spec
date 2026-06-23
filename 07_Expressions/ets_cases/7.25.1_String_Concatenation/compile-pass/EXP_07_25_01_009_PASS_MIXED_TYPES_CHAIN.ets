/**
 * @id EXP_07_25_01_009_PASS_MIXED_TYPES_CHAIN
 * @expect compile-pass
 * @section 7.25.1
 * @design 验证混合类型（int+int+string+boolean）连续拼接编译通过
 * @note 正向用例：1+2+": "+true → int+int 先数值加法得 3，再拼接 string
 */
function main(): void {
    let s: string = 1 + 2 + ": " + true;
    let t: string = "!" + 1 + 2;
}
