/**
 * @id ITF_10_05_200_RUNTIME_INTERFACE_IMPL
 * @expect runtime
 * @section 10.5
 * @design 接口实现运行时
 * @note 运行时用例：验证类实现接口方法运行时正确
 */
interface Greeting {
    greet(): string;
}
class Hello implements Greeting {
    greet(): string { return "Hello, World!"; }
}
function main(): void {
    let g: Greeting = new Hello();
    let msg: string = g.greet();
    if (msg != "Hello, World!") { throw new Error("assertion failed: " + msg); }
    console.log("verified");
}
