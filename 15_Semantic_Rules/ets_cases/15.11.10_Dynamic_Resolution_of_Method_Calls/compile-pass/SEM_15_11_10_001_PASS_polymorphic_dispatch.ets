/**
 * @id SEM_15_11_10_001_PASS_polymorphic_dispatch
 * @expect compile-pass
 * @section 15.11.10
 * @design 方法调用动态解析：多态派发
 * @note 正向用例：子类覆写方法通过基类引用调用时动态派发
 */
class Animal { speak(): string { return "..."; } }
class Dog extends Animal { override speak(): string { return "Woof!"; } }
function main(): void {
    let a: Animal = new Dog();
    let s: string = a.speak();
    console.log(s);
}
