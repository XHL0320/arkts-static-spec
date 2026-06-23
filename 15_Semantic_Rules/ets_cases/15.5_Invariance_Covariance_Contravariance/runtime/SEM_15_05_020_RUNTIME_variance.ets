/**
 * @id SEM_15_05_020_RUNTIME_variance
 * @expect runtime
 * @section 15.5
 * @design 验证变体运行时行为：协变返回值 + 逆变参数的实际方法派发
 * @note 运行时用例：验证协变/逆变在运行时行为正确
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
function useDogFn(fn: (d: Dog) => string): string {
    let d: Dog = new Dog(); d.name = "Rex"; d.breed = "Lab";
    return fn(d);
}
function animalDesc(a: Animal): string {
    return "Animal: " + a.name;
}
function main(): void {
    let result: string = useDogFn(animalDesc);
    if (result != "Animal: Rex") {
        throw new Error("assertion failed: expected 'Animal: Rex' got '" + result + "'");
    }
    console.log("verified: " + result);
}
