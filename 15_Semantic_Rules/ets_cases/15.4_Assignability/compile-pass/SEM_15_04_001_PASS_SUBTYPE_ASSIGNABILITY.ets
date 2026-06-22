/**
 * @id SEM_15_04_001
 * @expect compile-pass
 * @section 15.4
 * @design 验证子类型可赋值性：S <: T ⇒ S 可赋值给 T
 * @note 正向用例：Dog <: Animal，Dog 可赋值给 Animal
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
function main(): void {
    let dog: Dog = new Dog();
    dog.name = "Buddy";
    let animal: Animal = dog;
    console.log(`Animal: ${animal.name}`);
}
