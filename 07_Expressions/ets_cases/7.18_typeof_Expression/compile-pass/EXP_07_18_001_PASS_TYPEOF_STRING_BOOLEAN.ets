/**
 * @id EXP_07_18_001_PASS_TYPEOF_STRING_BOOLEAN
 * @expect compile-pass
 * @section 7.18
 * @design 验证 typeof string/boolean 编译通过
 * @note 正向用例：string→"string", boolean→"boolean" 编译通过
 */
function testString(): void {
    let s: string = "hello"
    let t: string = typeof s
}

function testBoolean(): void {
    let b: boolean = true
    let t: string = typeof b
}
