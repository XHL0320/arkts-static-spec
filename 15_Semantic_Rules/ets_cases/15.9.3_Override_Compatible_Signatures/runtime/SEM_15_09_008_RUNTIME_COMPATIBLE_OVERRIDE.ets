/**
 * @id SEM_15_09_008_RUNTIME_COMPATIBLE_OVERRIDE
 * @expect runtime
 * @section 15.9.3
 * @design 验证兼容签名覆写运行时行为：基类引用调用派生类方法
 * @note 运行时用例：返回值协变 + 参数兼容的覆写在运行时正确
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
class Base { make(): Animal { return new Animal(); } }
class Derived extends Base { override make(): Dog { let d: Dog = new Dog(); d.name = "Rex"; return d; } }
function main(): void {
    let b: Base = new Derived();
    let a: Animal = b.make();
    if (a.name != "Rex") { throw new Error("assertion failed"); }
    console.log("verified");
}
