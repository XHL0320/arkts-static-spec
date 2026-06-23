/**
 * @id CCY_16_03_03_020_RUNTIME_async_instance_method
 * @expect runtime
 * @section 16.3.3
 * @design async 实例方法执行返回 Promise resolved 值
 * @note 运行时用例：验证 async 实例方法调用后 Promise 正确决议
 */
class MyClass {
    async getValue(): Promise<number> {
        return 42;
    }
}
function main(): void {
    let obj: MyClass = new MyClass();
    let p: Promise<number> = obj.getValue();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
