/**
 * @id EXP_07_25_01_033_RUNTIME_STRING_BOOLEAN
 * @expect runtime
 * @section 7.25.1
 * @design 验证 string + boolean 运行时拼接结果正确
 * @note 运行时用例：boolean→"true"/"false" 字符串转换
 */
function main(): void {
    let r1: string = "flag=" + true;
    if (r1 != "flag=true") {
        throw new Error("assert failed: " + r1);
    }
    let r2: string = "flag=" + false;
    if (r2 != "flag=false") {
        throw new Error("assert failed: " + r2);
    }
    console.log("verified");
}
