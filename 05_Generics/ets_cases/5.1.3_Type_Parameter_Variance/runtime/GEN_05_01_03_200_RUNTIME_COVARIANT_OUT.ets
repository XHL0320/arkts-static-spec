/**
 * @id GEN_05_01_03_200_RUNTIME_COVARIANT_OUT
 * @expect runtime
 * @section 5.1.3
 * @design 验证 out 协变在运行时行为正确
 * @note 运行时用例：out T 协变赋值后取值类型正确
 */
class CovariantHolder<out T> {
    private readonly value: T;
    constructor(v: T) { this.value = v; }
    get(): T { return this.value; }
}

function main(): void {
    let h: CovariantHolder<string> = new CovariantHolder<string>("runtime_ok");
    let v: string = h.get();
    if (v != "runtime_ok") {
        throw new Error("assertion failed: " + v);
    }
    console.log("verified");
}
