/**
 * @id GEN_05_02_02_107_RUNTIME_EXPLICIT_INST
 * @expect runtime
 * @section 5.2.2
 * @design 明确实例化运行时
 * @note 运行时用例：验证明确实例化运行时正确
 */
class MyBox4<T> {
    value: T;
    constructor(v: T) { this.value = v; }
}
function main(): void {
    let b: MyBox4<string> = new MyBox4<string>("hello");
    if (b.value != "hello") {
        throw new Error("assertion failed: " + b.value);
    }
    console.log("verified");
}
