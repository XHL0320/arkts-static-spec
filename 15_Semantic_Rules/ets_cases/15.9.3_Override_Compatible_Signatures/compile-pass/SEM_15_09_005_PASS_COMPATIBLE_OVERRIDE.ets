/**
 * @id SEM_15_09_005
 * @expect compile-pass
 * @section 15.9.3
 * @design 验证覆写兼容签名：返回值协变 + 参数逆变时签名兼容
 * @note 正向用例：子类返回 Dog (<:Animal)，参数接受 Animal (>:Dog)
 */
class Animal { name: string = ""; }
class Dog extends Animal { breed: string = ""; }
class Base { process(a: Animal): Animal { return a; } }
class Derived extends Base {
    process(d: Dog): Dog { let r: Dog = new Dog(); r.name = d.name; r.breed = d.breed; return r; }
}
function main(): void {
    let obj: Derived = new Derived();
    let d: Dog = new Dog(); d.name = "Rex"; d.breed = "Lab";
    let r: Dog = obj.process(d);
    console.log(r.name);
}
