/**
 * @id STM_08_04_009_RUNTIME_let_const_values
 * @expect runtime
 * @section 8.4
 * @design 验证let可赋值和const不可变性的运行时行为
 * @note let变量可修改，const常量不可修改
 */
function main(): void {
    let x: int = 10;
    if (x != 10) {
        throw new Error("let initial value should be 10");
    }
    x = 20;
    if (x != 20) {
        throw new Error("let reassigned value should be 20");
    }
    const y: int = 30;
    if (y != 30) {
        throw new Error("const initial value should be 30");
    }
    let a: string = "hello";
    if (a != "hello") {
        throw new Error("let string initial value should be hello");
    }
    a = "world";
    if (a != "world") {
        throw new Error("let string reassigned value should be world");
    }
    const b: string = "fixed";
    if (b != "fixed") {
        throw new Error("const string value should be fixed");
    }
    let flag: boolean = true;
    if (flag != true) {
        throw new Error("let boolean initial value should be true");
    }
    flag = false;
    if (flag != false) {
        throw new Error("let boolean reassigned value should be false");
    }
    console.log("verified");
}
