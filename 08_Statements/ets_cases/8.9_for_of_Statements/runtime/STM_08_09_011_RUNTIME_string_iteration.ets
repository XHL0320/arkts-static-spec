/**
 * @id STM_08_09_011_RUNTIME_string_iteration
 * @expect runtime
 * @section 8.9
 * @design 运行时验证string的for-of迭代结果正确
 * @note 遍历string验证字符拼接和迭代次数
 */
function main(): void {
    let str: string = "abc";
    let result: string = "";
    let count: int = 0;
    for (let ch of str) {
        result += ch;
        count++;
    }
    if (result != "abc") {
        throw new Error("String iteration result mismatch");
    }
    if (count != 3) {
        throw new Error("String iteration count mismatch");
    }
    console.log("verified");
}
