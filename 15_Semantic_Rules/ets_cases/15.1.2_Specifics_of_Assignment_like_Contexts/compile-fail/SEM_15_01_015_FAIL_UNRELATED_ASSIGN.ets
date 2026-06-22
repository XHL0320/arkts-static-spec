/**
 * @id SEM_15_01_015
 * @expect compile-fail
 * @section 15.1.2
 * @design 验证赋值上下文中不相关类拒绝：Dog 不可赋值给 Cat
 * @note 反向用例：无继承关系的类之间不可赋值
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
class Cat extends Animal { color: string = ""; }
function main(): void {
    let c: Cat;
    let d: Dog = new Dog();
    c = d;
}
