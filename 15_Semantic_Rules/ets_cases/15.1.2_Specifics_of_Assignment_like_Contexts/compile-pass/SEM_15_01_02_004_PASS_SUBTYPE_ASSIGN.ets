/**
 * @id SEM_15_01_02_004_PASS_SUBTYPE_ASSIGN
 * @expect compile-pass
 * @section 15.1.2
 * @design 验证赋值上下文中子类型赋值：Dog → Animal 可赋值
 * @note 正向用例：子类型可赋值给基类型
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
function main(): void {
    let a: Animal;
    let d: Dog = new Dog();
    d.name = "Rex";
    a = d;
    console.log(`a=${a.name}`);
}
