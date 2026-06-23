/**
 * @id SEM_15_01_05_002_PASS_STRING_BOOL
 * @expect compile-pass
 * @section 15.1.5
 * @design 验证字符串与布尔值拼接：string + boolean → string
 * @note 正向用例：布尔值通过字符串转换拼接
 */
function main(): void {
    let s: string = "flag: ";
    let b: boolean = true;
    let r = s + b;
    let r2 = b + s;
    let t: string = r;
    console.log(t);
}
