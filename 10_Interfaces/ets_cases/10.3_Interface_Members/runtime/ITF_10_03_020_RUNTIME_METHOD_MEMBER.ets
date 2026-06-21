/**
 * @id ITF_10_03_020_RUNTIME_METHOD_MEMBER
 * @expect runtime
 * @section 10.3
 * @design 接口方法成员运行时调用
 * @note 运行时用例：验证接口中声明的方法在实现类中正确执行
 */
interface Greeter {
    greet(): string;
}
class Hello implements Greeter {
    greet(): string { return "hello"; }
}
function main(): void {
    let g: Greeter = new Hello();
    let msg: string = g.greet();
    if (msg != "hello") { throw new Error("assertion failed: " + msg); }
    console.log("verified");
}
