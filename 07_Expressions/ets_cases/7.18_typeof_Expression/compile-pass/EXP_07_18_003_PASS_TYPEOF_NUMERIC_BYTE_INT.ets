/**
 * @id EXP_07_18_003_PASS_TYPEOF_NUMERIC_BYTE_INT
 * @expect compile-pass
 * @section 7.18
 * @design 验证 typeof byte/short/int/long/float 编译通过
 * @note 正向用例：各数值类型→对应类型名字符串 编译通过
 */
function testByte(): void {
    let x: byte = 1
    let t: string = typeof x
}

function testShort(): void {
    let x: short = 2
    let t: string = typeof x
}

function testInt(): void {
    let x: int = 42
    let t: string = typeof x
}

function testLong(): void {
    let x: long = 100
    let t: string = typeof x
}

function testFloat(): void {
    let x: float = 3.14 as float
    let t: string = typeof x
}
