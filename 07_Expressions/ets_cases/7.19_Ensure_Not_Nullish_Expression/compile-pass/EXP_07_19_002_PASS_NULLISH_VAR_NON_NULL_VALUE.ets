/**
 * @id EXP_07_19_002_PASS_NULLISH_VAR_NON_NULL_VALUE
 * @expect compile-pass
 * @section 7.19
 * @design 验证空值类型变量持有非空值时 ! 编译通过
 * @note 正向用例：T | undefined 类型变量持有非空值，应用 ! 后类型窄化为 T
 */
function testUndefinedUnion(): void {
    let x: int | undefined = 42
    let y: int = x!
}

function testNullUnion(): void {
    let x: int | null = 100
    let y: int = x!
}

function testStringUndefined(): void {
    let s: string | undefined = "hello"
    let t: string = s!
}
