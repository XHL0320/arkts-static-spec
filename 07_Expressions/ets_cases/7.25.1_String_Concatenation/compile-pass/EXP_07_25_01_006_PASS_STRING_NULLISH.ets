/**
 * @id EXP_07_25_01_006_PASS_STRING_NULLISH
 * @expect compile-pass
 * @section 7.25.1
 * @design 验证 string + null/undefined 字符串拼接编译通过
 * @note 正向用例：null→"null"，undefined→"undefined"
 */
function main(): void {
    let s1: string = "a" + null;
    let s2: string = "b" + undefined;
    let x: string | null | undefined = null;
    let s3: string = "val=" + x;
}
