/**
 * @id GEN_05_01_03_202_RUNTIME_COVARIANT_OUT
 * @expect runtime
 * @section 5.1.3
 * @design 协变 out 类型参数运行时验证
 * @note 原008分类错误(PASS含main)，修正为RUNTIME
 */
class W<out T> {
    readonly value: T;
    constructor(v: T) { this.value = v; }
}
function main(): void {
    let w: W<number> = new W<number>(42);
    if (w.value != 42) throw new Error("assertion failed: " + w.value);
}
