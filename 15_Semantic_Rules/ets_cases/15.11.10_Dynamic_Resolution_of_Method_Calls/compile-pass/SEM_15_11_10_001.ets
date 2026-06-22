/**
 * @id SEM_15_11_10_001
 * @expect compile-pass
 * @section 15.11.10
 * @design 方法调用动态解析：多态派发
 * @note 正向用例
 */
class Animal { speak(): string { return "..."; } }
class Dog extends Animal { override speak(): string { return "Woof!"; } }
function main(): void {
    let a: Animal = new Dog();
    let s: string = a.speak();
    console.log(s);
}
