/**
 * @id SEM_15_08_004
 * @expect compile-fail
 * @section 15.8.1
 * @design 验证不再使用 smart cast — 此场景编译器已知值类型，不验证作用域限制
 * @note ArkTS 编译器在值已知时可绕过 smart cast 作用域限制。
 *       此用例保留用于追踪编译器行为。
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
function maybeDog(): Animal {
    return new Dog();
}
function main(): void {
    let a: Animal = maybeDog();
    if (a instanceof Dog) { }
    let d: Dog = a;
}
