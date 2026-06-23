/**
 * @id EXP_07_25_01_002_PASS_STRING_INT
 * @expect compile-pass
 * @section 7.25.1
 * @design 验证 string + int 字符串拼接（整数→十进制字符串转换）编译通过
 * @note 正向用例：string + int 触发字符串转换，int 转为十进制字符串拼接
 */
function main(): void {
    let s: string = "value=" + 42;
    let a: int = 100;
    let t: string = "num=" + a;
}
