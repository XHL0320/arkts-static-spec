/**
 * @id STM_08_04_001_PASS_basic_let
 * @expect compile-pass
 * @section 8.4
 * @design 测试let基本声明功能：使用let声明变量，验证类型推断和基本赋值
 * @note let声明必须初始化，变量可变，类型由初始值推断
 */
function testLetBasic(): void {
    let x: int = 10;
    let y: number = 3.14;
    let name: string = "ArkTS";
    let flag: boolean = true;
    x = 20;
    y = 2.71;
}
