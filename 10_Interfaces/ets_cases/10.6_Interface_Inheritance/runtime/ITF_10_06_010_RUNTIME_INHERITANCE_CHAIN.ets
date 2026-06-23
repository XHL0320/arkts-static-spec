/**
 * @id ITF_10_06_010_RUNTIME_INHERITANCE_CHAIN
 * @expect runtime
 * @section 10.6
 * @design 接口继承链运行时方法解析
 * @note 运行时用例：验证通过接口继承链正确解析并调用方法
 */
interface Base {
    id(): number;
}
interface Middle extends Base {
    name(): string;
}
interface Derived extends Middle {
    desc(): string;
}
class Impl implements Derived {
    id(): number { return 42; }
    name(): string { return "test"; }
    desc(): string { return "ok"; }
}
function main(): void {
    let d: Derived = new Impl();
    if (d.id() != 42) { throw new Error("id failed"); }
    if (d.name() != "test") { throw new Error("name failed"); }
    console.log("verified");
}
