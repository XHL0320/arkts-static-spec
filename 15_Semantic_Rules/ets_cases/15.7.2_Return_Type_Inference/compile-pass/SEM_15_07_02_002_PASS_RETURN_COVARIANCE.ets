/**
 * @id SEM_15_07_02_002
 * @expect compile-pass
 * @section 15.7.2
 * @design 验证返回值协变：子类方法可返回子类型
 * @note 正向用例：覆写方法返回 Dog <: Animal，协变通过
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
class Factory { make(): Animal { return new Animal(); } }
class DogFactory extends Factory { make(): Dog { return new Dog(); } }
function main(): void {
    let f: Factory = new DogFactory();
    let a: Animal = f.make();
    console.log(`a=${a.name}`);
}
