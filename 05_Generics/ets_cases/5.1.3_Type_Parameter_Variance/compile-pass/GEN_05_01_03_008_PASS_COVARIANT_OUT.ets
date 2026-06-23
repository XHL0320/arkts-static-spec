/**
 * @id GEN_05_01_03_008_PASS_COVARIANT_OUT
 * @expect compile-pass
 * @section 5.1.3
 * @design 协变 out 类型参数编译验证
 * @note 编译验证，运行时入口问题暂不可执行
 */
class W<out T> {
    readonly value: T;
    constructor(v: T) { this.value = v; }
}
function main(): void {
    let w: W<number> = new W<number>(42);
    if (w.value != 42) throw new Error("assertion failed: " + w.value);
}
