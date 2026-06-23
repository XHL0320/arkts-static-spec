/**
 * @id CLS_09_03_009_RUNTIME_INTERFACE_DISPATCH
 * @expect runtime
 * @section 9.3
 * @design 通过接口类型引用调用实现类方法
 * @note 运行时用例：验证接口方法调用派发到实现类
 */
interface IShape3 {
  area(): double
}
class Circle3 implements IShape3 {
  radius: double
  constructor(r: double) {
    this.radius = r
  }
  area(): double {
    return 3.14159 * this.radius * this.radius
  }
}
class Square3 implements IShape3 {
  side: double
  constructor(s: double) {
    this.side = s
  }
  area(): double {
    return this.side * this.side
  }
}

function main(): void {
  let c: IShape3 = new Circle3(1.0)
  let s: IShape3 = new Square3(2.0)
  if (c.area() < 3.0) {
    throw new Error("Circle3.area() should be ~3.14")
  }
  if (s.area() != 4.0) {
    throw new Error("Square3.area() should be 4.0")
  }
  console.log("Interface dispatch verified")
}
