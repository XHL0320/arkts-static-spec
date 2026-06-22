/**
 * @id SEM_15_09_006
 * @expect compile-fail
 * @section 15.9.3
 * @design 验证覆写签名不可兼容拒绝：逆变返回值 + 协变参数
 * @note 反向用例：返回 Animal (<: Dog) 不允许（逆变），参数 Dog (<: Animal) 不允许（协变）
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
class Base { process(d: Dog): Dog { return d; } }
class Derived extends Base { process(a: Animal): Animal { return a; } }
function main(): void {}
