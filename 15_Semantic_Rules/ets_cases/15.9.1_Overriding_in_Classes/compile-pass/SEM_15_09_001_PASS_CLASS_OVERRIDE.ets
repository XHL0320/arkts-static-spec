/**
 * @id SEM_15_09_001_PASS_CLASS_OVERRIDE
 * @expect compile-pass
 * @section 15.9.1
 * @design 验证类方法覆写：子类 override 父类方法
 * @note 正向用例：Dog.speak() override Animal.speak()
 */
class Animal { speak(): string { return "..."; } }
class Dog extends Animal { override speak(): string { return "Woof!"; } }
function main(): void {
    let d: Dog = new Dog();
    let s: string = d.speak();
    console.log(s);
}
