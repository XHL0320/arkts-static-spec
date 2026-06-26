/**
 * @id EXP_07_19_006_PASS_TYPE_NARROWING
 * @expect compile-pass
 * @section 7.19
 * @design 验证 ! 运算符的类型窄化效果：T | undefined → T
 * @note 正向用例：! 将空值类型窄化为非空类型，结果可赋值给非空类型变量
 */
class MyData {
    f: int = 1
}

function testTypeNarrowingInt(): void {
    let x: int | undefined = 42
    let y: int = x!  // 类型从 int | undefined 窄化为 int
}

function testTypeNarrowingString(): void {
    let s: string | null = "hello"
    let t: string = s!  // 类型从 string | null 窄化为 string
}

function testTypeNarrowingObject(): void {
    let c: MyData | undefined = new MyData()
    let d: MyData = c!  // 类型从 MyData | undefined 窄化为 MyData
}
