/**
 * @id EXP_07_25_01_008_PASS_MULTI_CONCAT
 * @expect compile-pass
 * @section 7.25.1
 * @design 验证多个字符串连续拼接编译通过
 * @note 正向用例："A"+"B"+"C"+"D" 连续拼接
 */
function main(): void {
    let s: string = "A" + "B" + "C" + "D";
}
