/**
 * @id SEM_15_08_101_RUNTIME_ST_placeholder
 * @expect runtime
 * @section 15.8
 * @design 智能转换运行时：instanceof 分支执行
 * @note 运行时验证 instanceof 分支中智能类型转换正确性
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
function main(): void {
    let a: Animal = new Dog();
    a.name = "Rex";
    if (a instanceof Dog) {
        let d: Dog = a;
        d.breed = "Lab";
        console.log(d.name + " is a " + d.breed);
    }
}
