/**
 * @id ITF_10_04_004_RUNTIME_INTERFACE_PROPERTY
 * @expect runtime
 * @section 10.4
 * @design 接口属性运行时访问
 * @note 运行时用例：验证实现接口的类属性在运行时正确
 */
interface Named {
    name: string;
}
class Person implements Named {
    name: string = "Alice";
}
function main(): void {
    let p: Person = new Person();
    if (p.name != "Alice") throw new Error("assertion failed: " + p.name);
}
