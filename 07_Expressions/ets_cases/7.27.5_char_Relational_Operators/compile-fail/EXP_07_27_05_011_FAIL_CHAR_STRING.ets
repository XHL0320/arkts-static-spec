/**
 * @id EXP_07_27_05_011_FAIL_CHAR_STRING
 * @expect compile-fail
 * @section 7.27.5
 * @design 验证 char 与 string 关系运算产生编译时错误
 * @note 反向用例：char 与 string 不能进行关系运算，应报编译时错误
 *       spec: 非 char 且非数值类型操作数 → compile-time error
 */
function main(): void {
    let c: char = c'A';
    let s: string = "A";
    let r: boolean = c < s;  // Compile-time error: char vs string
}
