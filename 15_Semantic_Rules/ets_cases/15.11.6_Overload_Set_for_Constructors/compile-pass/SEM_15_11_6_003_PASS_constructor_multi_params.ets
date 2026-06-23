/**
 * @id SEM_15_11_6_003_PASS_constructor_multi_params
 * @expect compile-pass
 * @section 15.11.6
 * @design 构造函数多参数
 * @note 正向用例
 */
class MultiCtor {
    val: string;
    constructor() { this.val = "zero"; }
    constructor(v: int) { this.val = v.toString(); }
}
function main(): void {
    let b: MultiCtor = new MultiCtor(42);
    console.log(b.val);
}
