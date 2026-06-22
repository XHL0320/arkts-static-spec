/**
 * @id SEM_15_11_04_001
 * @expect compile-pass
 * @section 15.11.4
 * @design 类静态方法重载集
 * @note 正向用例
 */
class Calc {
    static convert(x: int): string { return "int"; }
    static convert(x: string): string { return "str"; }
}
function main(): void {
    let r: string = Calc.convert(42);
    console.log(r);
}
