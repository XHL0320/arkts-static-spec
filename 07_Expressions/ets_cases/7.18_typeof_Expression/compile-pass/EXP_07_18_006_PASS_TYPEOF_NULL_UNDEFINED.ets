/**
 * @id EXP_07_18_006_PASS_TYPEOF_NULL_UNDEFINED
 * @expect compile-pass
 * @section 7.18
 * @design 验证 typeof null/undefined 编译通过
 * @note 正向用例：null→"object", undefined→"undefined" 编译通过
 */
function testNull(): void {
    let t: string = typeof null
}

function testUndefined(): void {
    let t: string = typeof undefined
}
