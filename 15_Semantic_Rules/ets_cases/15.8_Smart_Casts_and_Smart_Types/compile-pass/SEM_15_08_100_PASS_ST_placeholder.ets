/**
 * @id SEM_15_08_100_PASS_ST_placeholder
 * @expect compile-pass
 * @section 15.8
 * @design 智能类型：instanceof 类型收窄
 * @note 正向用例
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
