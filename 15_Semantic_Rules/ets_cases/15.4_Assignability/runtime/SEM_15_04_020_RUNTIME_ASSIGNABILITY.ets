/**
 * @id SEM_15_04_020_RUNTIME_ASSIGNABILITY
 * @expect runtime
 * @section 15.4
 * @design 验证可赋值性运行时行为：子类型赋值后方法调用正确
 * @note 运行时用例：通过 Animal 引用调用 Dog 的覆写方法
 */
class Animal { name: string = ""; speak(): string { return "..."; } }
class Dog extends Animal { speak(): string { return "Woof!"; } }
function main(): void {
    let dog: Dog = new Dog();
    dog.name = "Rex";
    let animal: Animal = dog;
    let sound: string = animal.speak();
    if (sound != "Woof!") {
        throw new Error("assertion failed: expected Woof! got " + sound);
    }
    console.log("verified: " + sound);
}
