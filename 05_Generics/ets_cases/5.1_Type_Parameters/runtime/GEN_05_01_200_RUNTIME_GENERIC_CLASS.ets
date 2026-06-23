/**
 * @id GEN_05_01_200_RUNTIME_GENERIC_CLASS
 * @expect runtime
 * @section 5.1
 * @design 泛型类运行时
 * @note 运行时用例：验证泛型类实例化运行时正确
 */
class MyBox2<T> {
    value: T;
    constructor(v: T) { this.value = v; }
}
function main(): void {
    let b: MyBox2<number> = new MyBox2<number>(42);
    if (b.value != 42) {
        throw new Error("assertion failed: " + b.value);
    }
    console.log("verified");
}
