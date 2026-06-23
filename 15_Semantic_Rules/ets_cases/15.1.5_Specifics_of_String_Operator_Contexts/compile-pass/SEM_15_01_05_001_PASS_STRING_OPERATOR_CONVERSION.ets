/**
 * @id SEM_15_01_05_001_PASS_STRING_OPERATOR_CONVERSION
 * @expect compile-pass
 * @section 15.1.5
 * @design 验证二元 '+' 运算符在一侧为 string 时进行字符串转换
 * @note 正向用例：string+int→string, int+string→string, string+字面量→string
 */
function main(): void {
    let s: string = "value: ";
    let n: int = 42;
    let result1 = s + n;
    let result2 = n + s;
    let result3 = "num" + 100;
    console.log(`result1=${result1}, result2=${result2}, result3=${result3}`);
}
