/**
 * @id SEM_15_02_005_PASS_UNION_TYPE_SUBTYPE
 * @expect compile-pass
 * @section 15.2.5
 * @design 验证联合类型子类型：U <: T 当且仅当 U 的每个成员 <: T
 * @note 正向用例：Dog|Cat 每个成员 <: Animal，所以 Dog|Cat <: Animal
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
class Cat extends Animal { color: string = ""; }
function acceptAnimal(a: Animal): string { return a.name; }
function main(): void {
    let dog: Dog = new Dog(); dog.name = "Rex";
    let cat: Cat = new Cat(); cat.name = "Whiskers";
    let pet: Animal; pet = dog; pet = cat;
    console.log(`Dog name: ${acceptAnimal(dog)}`);
    console.log(`Cat name: ${acceptAnimal(cat)}`);
}
