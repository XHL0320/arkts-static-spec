/**
 * @id SEM_15_06_002_PASS_SUBTYPE_ARG
 * @expect compile-pass
 * @section 15.6
 * @design 验证子类型参数兼容：子类型参数可传父类型声明
 * @note 正向用例：Dog 参数传 Animal 声明（子类型兼容）
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
function describe(a: Animal): string { return a.name; }
function main(): void {
    let d: Dog = new Dog(); d.name = "Rex";
    let r: string = describe(d);
    console.log(`r=${r}`);
}
