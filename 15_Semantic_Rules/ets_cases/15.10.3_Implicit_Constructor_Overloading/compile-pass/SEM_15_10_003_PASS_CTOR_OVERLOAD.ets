/**
 * @id SEM_15_10_003
 * @expect compile-pass
 * @section 15.10.3
 * @design 验证构造函数重载：不同参数列表的构造函数
 * @note 正向用例：Holder(int) 和 Holder(string) 构造函数重载
 */
class Holder {
    val: string = "";
    constructor(v: int) { this.val = v.toString(); }
    constructor(v: string) { this.val = v; }
}
function main(): void {
    let a: Holder = new Holder(42);
    let b: Holder = new Holder("hello");
    console.log(`${a.val} ${b.val}`);
}
