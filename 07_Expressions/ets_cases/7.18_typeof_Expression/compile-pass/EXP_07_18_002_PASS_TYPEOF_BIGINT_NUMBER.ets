/**
 * @id EXP_07_18_002_PASS_TYPEOF_BIGINT_NUMBER
 * @expect compile-pass
 * @section 7.18
 * @design 验证 typeof bigint/number/double 编译通过
 * @note 正向用例：bigint→"bigint", number→"number", double→"number" 编译通过
 */
function testBigint(): void {
    let b: bigint = 100n
    let t: string = typeof b
}

function testNumber(): void {
    let n: number = 3.14
    let t: string = typeof n
}

function testDouble(): void {
    let d: double = 2.718
    let t: string = typeof d
}
