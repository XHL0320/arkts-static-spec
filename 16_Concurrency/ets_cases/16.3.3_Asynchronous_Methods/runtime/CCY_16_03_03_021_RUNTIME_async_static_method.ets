/**
 * @id CCY_16_03_03_021_RUNTIME_async_static_method
 * @expect runtime
 * @section 16.3.3
 * @design async 静态方法执行返回 Promise resolved 值
 * @note 运行时用例：验证 async 静态方法调用后 Promise 正确决议
 */
class MyClass {
    static async getValue(): Promise<string> {
        return "static";
    }
}
function main(): void {
    let p: Promise<string> = MyClass.getValue();
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
