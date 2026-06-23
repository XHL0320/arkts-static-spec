/**
 * @id EXP_07_25_01_007_PASS_INT_STRING_RHS
 * @expect compile-pass
 * @section 7.25.1
 * @design 验证右操作数为 string 时 int + string 同样触发拼接编译通过
 * @note 正向用例：int + string 时 string 在右操作数，同样触发字符串上下文
 */
function main(): void {
    let s: string = 42 + " is the answer";
    let a: int = 100;
    let t: string = a + " percent";
}
