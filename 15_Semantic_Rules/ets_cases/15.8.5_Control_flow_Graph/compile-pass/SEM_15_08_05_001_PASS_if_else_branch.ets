/**
 * @id SEM_15_08_05_001
 * @expect compile-pass
 * @section 15.8.5
 * @design 控制流图：if/else 分支类型
 * @note 正向用例：instanceof 检查后在分支内使用子类型
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
function main(): void {
    let a: Animal = new Dog();
    if (a instanceof Dog) {
        console.log("dog");
    }
}
