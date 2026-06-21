/**
 * @id GEN_05_02_01_001_RUNTIME_TYPE_ARG
 * @expect runtime
 * @section 5.2.1
 * @design 类型参数实例化运行时验证
 * @note 运行时用例：验证类型参数在运行时正确
 */
class MyBox2<T> {
    value: T;
    constructor(v: T) { this.value = v; }
}
function main(): void {
    let b: MyBox2<number> = new MyBox2<number>(99);
    if (b.value != 99) throw new Error("assertion failed: " + b.value);
}
