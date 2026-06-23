/**
 * @id EXP_07_25_01_003_PASS_STRING_FLOAT
 * @expect compile-pass
 * @section 7.25.1
 * @design 验证 string + double/float 字符串拼接（浮点→十进制无精度丢失转换）编译通过
 * @note 正向用例：string + double/float 触发浮点→字符串转换
 */
function main(): void {
    let s: string = "pi=" + 3.14159;
    let a: double = 2.71828;
    let t: string = "e=" + a;
}
