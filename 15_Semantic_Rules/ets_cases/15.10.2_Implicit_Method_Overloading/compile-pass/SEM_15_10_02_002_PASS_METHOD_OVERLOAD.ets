/**
 * @id SEM_15_10_02_002_PASS_METHOD_OVERLOAD
 * @expect compile-pass
 * @section 15.10.2
 * @design 验证类方法重载：同名方法不同参数可共存
 * @note 正向用例：Calculator.add(int) 和 Calculator.add(double) 重载
 */
class Calculator {
    add(x: int, y: int): int { return x + y; }
    add(x: double, y: double): double { return x + y; }
}
function main(): void {
    let c: Calculator = new Calculator();
    let r1: int = c.add(1, 2);
    let r2: double = c.add(1.5, 2.5);
    console.log(`${r1} ${r2}`);
}
