/**
 * @id SEM_15_04_011
 * @expect compile-fail
 * @section 15.4
 * @design 验证非子类型不可赋值：无继承关系的类不可互相赋值
 * @note 反向用例：Cat 非 Dog 子类型，不可赋值
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
class Cat extends Animal { color: string = ""; }
function main(): void {
    let dog: Dog = new Dog();
    let cat: Cat = dog;
}
