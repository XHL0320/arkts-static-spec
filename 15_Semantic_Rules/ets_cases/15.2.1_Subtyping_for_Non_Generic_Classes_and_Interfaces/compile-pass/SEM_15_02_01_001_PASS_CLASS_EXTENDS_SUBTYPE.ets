/**
 * @id SEM_15_02_01_001_PASS_CLASS_EXTENDS_SUBTYPE
 * @expect compile-pass
 * @section 15.2.1
 * @design 验证非泛型类 extends 产生直接子类型关系：class B extends A → B <: A
 * @note 正向用例：Dog <: Animal，可赋值给 Animal 类型变量
 */
class Animal { name: string = ""; speak(): string { return "..."; } }
class Dog extends Animal { breed: string = ""; speak(): string { return "Woof!"; } }
function acceptAnimal(a: Animal): void { console.log(a.speak()); }
function main(): void {
    let dog: Dog = new Dog(); dog.name = "Rex"; dog.breed = "Labrador";
    acceptAnimal(dog);
    let animal: Animal = dog;
    console.log(`Animal name: ${animal.name}`);
}
