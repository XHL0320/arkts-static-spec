/**
 * @id ITF_10_05_010_RUNTIME_INTERFACE_PROPERTY
 * @expect runtime
 * @section 10.5
 * @design 接口属性运行时
 * @note 运行时用例：验证类实现接口属性运行时正确
 */
interface HasName {
    name: string;
}
class Person implements HasName {
    name: string = "Alice";
}
function main(): void {
    let p: HasName = new Person();
    if (p.name != "Alice") { throw new Error("assertion failed: " + p.name); }
    console.log("verified");
}
