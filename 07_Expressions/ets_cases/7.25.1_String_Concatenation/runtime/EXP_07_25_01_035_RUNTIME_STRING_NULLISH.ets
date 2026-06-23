/**
 * @id EXP_07_25_01_035_RUNTIME_STRING_NULLISH
 * @expect runtime
 * @section 7.25.1
 * @design 验证 string + null/undefined 运行时拼接结果正确
 * @note 运行时用例：null→"null", undefined→"undefined" 字符串转换
 */
function main(): void {
    let r1: string = "a" + null;
    if (r1 != "anull") {
        throw new Error("assert failed: " + r1);
    }
    let r2: string = "b" + undefined;
    if (r2 != "bundefined") {
        throw new Error("assert failed: " + r2);
    }
    let x: string | null | undefined = null;
    let r3: string = "val=" + x;
    if (r3 != "val=null") {
        throw new Error("assert failed: " + r3);
    }
    x = undefined;
    let r4: string = "val=" + x;
    if (r4 != "val=undefined") {
        throw new Error("assert failed: " + r4);
    }
    console.log("verified");
}
