/**
 * @id EXP_07_19_001_PASS_BASIC_NON_NULLISH
 * @expect compile-pass
 * @section 7.19
 * @design 验证 ensure-not-nullish 表达式在非空值上的基本用法编译通过
 * @note 正向用例：非空值类型变量应用 ! 运算符编译通过
 */
class MyClass {
    v: int = 1
}

function testBasicNonNullish(): void {
    let x: int = 42
    let y: int = x!
}

function testStringNonNullish(): void {
    let s: string = "hello"
    let t: string = s!
}

function testObjectNonNullish(): void {
    let c: MyClass = new MyClass()
    let d: MyClass = c!
}
