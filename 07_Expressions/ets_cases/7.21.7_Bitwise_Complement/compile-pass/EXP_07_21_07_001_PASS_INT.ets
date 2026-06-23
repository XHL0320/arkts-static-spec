/**
 * @id EXP_07_21_07_001_PASS_INT
 * @expect compile-pass
 * @section 7.21.7
 * @design 验证 ~int 编译通过，结果类型为 int
 * @note 正向用例：~int 基本用法
 */
function testIntComplement(): void {
    let x: int = 42
    let r: int = ~x
}

function main(): void {
    testIntComplement()
    console.log("verified")
}
