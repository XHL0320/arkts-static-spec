/**
 * @id STM_08_09_002_PASS_string_for_of
 * @expect compile-pass
 * @section 8.9
 * @design 使用for-of遍历string，验证变量类型正确推断为string
 * @note for-of可以遍历string，元素类型为string（单个字符），循环体内可拼接字符
 */
function testStringForOf(): void {
    let str: string = "hello";
    let result: string = "";
    for (let ch of str) {
        result += ch;
    }
}
