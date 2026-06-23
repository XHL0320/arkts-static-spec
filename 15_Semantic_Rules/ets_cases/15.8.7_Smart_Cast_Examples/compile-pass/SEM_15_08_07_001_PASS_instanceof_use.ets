/**
 * @id SEM_15_08_07_001_PASS_instanceof_use
 * @expect compile-pass
 * @section 15.8.7
 * @design 智能转换示例：典型 instanceof 使用
 * @note 正向用例：instanceof 检查后安全访问子类成员
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
function describe(a: Animal): string {
    if (a instanceof Dog) { return "Dog: " + a.breed; }
    return "Animal: " + a.name;
}
function main(): void {
    let d: Dog = new Dog(); d.name = "Rex"; d.breed = "Lab";
    console.log(describe(d));
}
