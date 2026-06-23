/**
 * @id GEN_05_01_02_001_RUNTIME_DEFAULT_TYPE_ARG
 * @expect runtime
 * @section 5.1
 * @design 默认类型参数运行时
 * @note 运行时用例：验证默认类型参数省略时正确使用
 */
class MyBox3<T = number> {
    value: T;
    constructor(v: T) { this.value = v; }
}
function main(): void {
    let b: MyBox3 = new MyBox3(99);
    if (b.value != 99) {
        throw new Error("assertion failed: " + b.value);
    }
    console.log("verified");
}
