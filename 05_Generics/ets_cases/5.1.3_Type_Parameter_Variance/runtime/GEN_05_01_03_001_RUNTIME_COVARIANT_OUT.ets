/**
 * @id GEN_05_01_03_001_RUNTIME_COVARIANT_OUT
 * @expect runtime
 * @section 5.1.3
 * @design 协变 out 类型参数运行时验证
 * @note 运行时用例：验证协变泛型运行时正确
 */
class W<out T> {
    readonly value: T;
    constructor(v: T) { this.value = v; }
}
function main(): void {
    let w: W<number> = new W<number>(42);
    if (w.value != 42) throw new Error("assertion failed: " + w.value);
}
