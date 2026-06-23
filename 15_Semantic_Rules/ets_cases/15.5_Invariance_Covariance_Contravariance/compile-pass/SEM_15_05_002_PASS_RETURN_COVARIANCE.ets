/**
 * @id SEM_15_05_002_PASS_RETURN_COVARIANCE
 * @expect compile-pass
 * @section 15.5
 * @design 验证返回值协变：子类覆写方法返回 Dog <: Animal 允许
 * @note 正向用例：返回类型可协变，Dog 是 Animal 的子类型
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
class AnimalFactory { create(): Animal { let a: Animal = new Animal(); a.name = "generic"; return a; } }
class DogFactory extends AnimalFactory {
    create(): Dog { let d: Dog = new Dog(); d.name = "Doggo"; d.breed = "Lab"; return d; }
}
function main(): void {
    let factory: AnimalFactory = new DogFactory();
    let result: Animal = factory.create();
    console.log(`Created: ${result.name}`);
}
