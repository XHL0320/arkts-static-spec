/**
 * @id SEM_15_11_04_002_PASS_static_method_multi_overload
 * @expect compile-pass
 * @section 15.11.4
 * @design 类静态方法多个重载
 * @note ⽐正向用例
 */
class Calc {
    static compute(x: int): int { return x; }
    static compute(x: int, y: int): int { return x + y; }
}
function main(): void {
    let r: int = Calc.compute(1, 2);
    console.log(r.toString());
}
