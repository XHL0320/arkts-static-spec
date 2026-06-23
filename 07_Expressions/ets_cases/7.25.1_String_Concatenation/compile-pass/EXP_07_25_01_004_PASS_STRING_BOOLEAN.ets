/**
 * @id EXP_07_25_01_004_PASS_STRING_BOOLEAN
 * @expect compile-pass
 * @section 7.25.1
 * @design 验证 string + boolean 字符串拼接（boolean→"true"/"false"转换）编译通过
 * @note 正向用例：string + boolean 触发 boolean→字符串转换
 */
function main(): void {
    let s1: string = "flag=" + true;
    let b: boolean = false;
    let s2: string = "active=" + b;
}
