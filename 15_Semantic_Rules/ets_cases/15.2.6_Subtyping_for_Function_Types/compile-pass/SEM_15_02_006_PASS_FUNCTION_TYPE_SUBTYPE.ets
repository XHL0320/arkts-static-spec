/**
 * @id SEM_15_02_006
 * @expect compile-pass
 * @section 15.2.6
 * @design 验证函数类型子类型：参数逆变，返回值协变
 * @note 正向用例：(Animal) => Dog <: (Dog) => Animal（参数逆变 + 返回值协变）
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
function childFn(a: Animal): Dog { let d: Dog = new Dog(); d.name = a.name; d.breed = "mixed"; return d; }
function useParentFn(fn: (d: Dog) => Animal): void {
    let d: Dog = new Dog(); d.name = "Buddy";
    let result: Animal = fn(d);
    console.log(`Result: ${result.name}`);
}
function main(): void {
    useParentFn(childFn);
}
