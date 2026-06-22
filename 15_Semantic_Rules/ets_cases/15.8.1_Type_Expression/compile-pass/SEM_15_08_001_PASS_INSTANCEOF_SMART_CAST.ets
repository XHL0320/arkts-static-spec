/**
 * @id SEM_15_08_001
 * @expect compile-pass
 * @section 15.8.1
 * @design 验证 instanceof smart cast：instanceof 检查后类型收窄
 * @note 正向用例：a instanceof Dog 后将 a 从 Animal 收窄为 Dog
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
function main(): void {
    let a: Animal = new Dog();
    if (a instanceof Dog) {
        let d: Dog = a;
        console.log(d.breed);
    }
}
