/**
 * @id EXP_07_19_007_PASS_IN_EXPRESSION
 * @expect compile-pass
 * @section 7.19
 * @design 验证 ! 在复合表达式中编译通过
 * @note 正向用例：! 可嵌入赋值、算术、条件等表达式中
 */
function testInAssignment(): void {
    let x: int | undefined = 5
    let y: int = x! + 10
}

function testInArithmetic(): void {
    let a: int | undefined = 3
    let b: int | undefined = 4
    let sum: int = a! + b!
}

function testInCondition(): void {
    let x: int | undefined = 10
    if (x! > 5) {
        let y: int = x! + 1
    }
}

function testInTernary(): void {
    let x: int | undefined = 7
    let y: int = (x! > 0 ? x! : 0)
}
