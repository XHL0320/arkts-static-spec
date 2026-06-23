/**
 * @id SEM_15_02_017_FAIL_PARAM_COVARIANCE
 * @expect compile-fail
 * @section 15.2.6
 * @design 验证函数类型参数逆变违规拒绝：(Dog)=>void 不可用作 (Animal)=>void
 * @note 反向用例：参数协变时不可赋值，Dog <: Animal 但函数参数逆变
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
function useAnimalFn(fn: (a: Animal) => void): void {}
function dogHandler(d: Dog): void {}
function main(): void {
    useAnimalFn(dogHandler);
}
