/**
 * @id SEM_15_01_026
 * @expect compile-pass
 * @section 15.1.5
 * @design 验证字符串与 double 拼接：string + double → string
 * @note 正向用例：浮点数通过字符串转换拼接
 */
function main(): void {
    let s: string = "pi: ";
    let pi: double = 3.14;
    let r = s + pi;
    let t: string = r;
    console.log(t);
}
