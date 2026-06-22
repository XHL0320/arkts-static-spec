/**
 * @id SEM_15_02_015
 * @expect runtime
 * @section 15.2.1
 * @design 验证非泛型子类型运行时调用：父类引用调用子类方法
 * @note 运行时用例：Dog → Animal 赋值后多态派发正确
 */
class Animal { speak(): string { return "..."; } }
class Dog extends Animal { override speak(): string { return "Woof!"; } }
function main(): void {
    let d: Dog = new Dog();
    let a: Animal = d;
    let s: string = a.speak();
    if (s != "Woof!") { throw new Error("assertion failed: " + s); }
    console.log("verified");
}
