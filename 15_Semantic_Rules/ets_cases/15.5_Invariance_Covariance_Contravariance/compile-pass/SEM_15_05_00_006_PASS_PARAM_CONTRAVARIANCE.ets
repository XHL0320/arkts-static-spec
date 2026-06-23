/**
 * @id SEM_15_05_00_006_PASS_PARAM_CONTRAVARIANCE
 * @expect compile-pass
 * @section 15.5
 * @design 验证函数参数逆变：Animal 处理器可作 Dog 参数的回调
 * @note 正向用例：参数逆变，(Animal)=>void 可赋值给 (Dog)=>void
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
function useDogFn(fn: (d: Dog) => void): void {
    fn(new Dog());
}
function animalHandler(a: Animal): void {
    console.log(a.name);
}
function main(): void {
    useDogFn(animalHandler);
}
