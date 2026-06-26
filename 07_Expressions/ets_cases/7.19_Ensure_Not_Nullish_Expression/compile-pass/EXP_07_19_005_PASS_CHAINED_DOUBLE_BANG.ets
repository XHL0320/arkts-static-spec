/**
 * @id EXP_07_19_005_PASS_CHAINED_DOUBLE_BANG
 * @expect compile-pass
 * @section 7.19
 * @design 验证链式 !!（双重 ensure-not-nullish）编译通过
 * @note 正向用例：x!! 先应用 ! 得到非空类型，再应用一次 ! 编译器忽略（产生警告但编译通过）
 */
function testChainedDoubleBang(): void {
    let x: int | undefined = 42
    let y: int = x!!
}

function testTripleBang(): void {
    let x: int | undefined = 42
    let y: int = x!!!
}
