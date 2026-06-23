/**
 * @id SEM_15_09_01_200_RUNTIME_OVERRIDE
 * @expect runtime
 * @section 15.9.1
 * @design 验证类方法覆写运行时行为：多态派发正确
 * @note 运行时用例：父类引用调用子类覆写的方法
 */
class Base { greet(): string { return "base"; } }
class Derived extends Base { override greet(): string { return "derived"; } }
function main(): void {
    let b: Base = new Derived();
    let s: string = b.greet();
    if (s != "derived") { throw new Error("assertion failed: " + s); }
    console.log("verified");
}
