/**
 * @id SEM_15_07_01_101_FAIL_union_ambiguity
 * @expect compile-fail
 * @section 15.7.1
 * @design 规范 15.7.1 Case 2：联合类型推断歧义或无匹配类型
 * @note 反向用例：byte|string=128无匹配, byte|long=127歧义, float|double=1歧义
 */
function main(): void {
    let c: byte | string = 127;
    c = 128;
    let e: byte | long = 128;
    e = 127;
    let g: float | double = 3.4e39;
    g = 1;
}
