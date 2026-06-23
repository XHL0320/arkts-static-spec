/**
 * @id SEM_15_01_07_002_PASS_TYPE_PARAM_CONSTRAINT
 * @expect compile-pass
 * @section 15.1.7
 * @design 验证类型参数约束：extends 约束的类型参数可调用约束方法
 * @note 正向用例：T extends HasName，可访问 .name 属性
 */
interface HasName { name: string; }
function greet<T extends HasName>(obj: T): string { return "Hi " + obj.name; }
class Person implements HasName { name: string = ""; }
function main(): void {
    let p: Person = new Person(); p.name = "Alice";
    let s: string = greet(p);
    console.log(s);
}
