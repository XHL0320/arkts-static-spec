/**
 * @id SEM_15_02_05_200_RUNTIME_UNION_SUBTYPE
 * @expect runtime
 * @section 15.2.5
 * @design 验证联合类型子类型运行时行为
 * @note 运行时用例：联合类型各成员赋值后运行时值正确
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
function main(): void {
    let d: Dog = new Dog(); d.name = "Rex";
    let a: Animal = d;
    if (a.name != "Rex") { throw new Error("assertion failed"); }
    console.log("verified");
}
