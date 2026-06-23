/**
 * @id ITF_10_01_200_RUNTIME_INTERFACE_POLYMORPHISM
 * @expect runtime
 * @section 10.1
 * @design 接口类型变量运行时多态
 * @note 运行时用例：验证接口类型变量可引用实现类实例并正确调用方法
 */
interface Shape {
    area(): number;
}
class Circle implements Shape {
    area(): number { return 314; }
}
function main(): void {
    let s: Shape = new Circle();
    let a: number = s.area();
    if (a != 314) { throw new Error("assertion failed: " + a); }
    console.log("verified");
}
