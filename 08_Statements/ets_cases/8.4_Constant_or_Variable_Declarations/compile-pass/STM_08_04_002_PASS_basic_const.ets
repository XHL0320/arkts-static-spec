/**
 * @id STM_08_04_002_PASS_basic_const
 * @expect compile-pass
 * @section 8.4
 * @design 测试const基本声明功能：使用const声明常量，验证不可变性
 * @note const声明必须初始化，常量不可重新赋值
 */
function testConstBasic(): void {
    const pi: number = 3.14159;
    const appName: string = "MyApp";
    const maxCount: int = 100;
    const isEnabled: boolean = true;
    const greeting: string = "Hello";
}
