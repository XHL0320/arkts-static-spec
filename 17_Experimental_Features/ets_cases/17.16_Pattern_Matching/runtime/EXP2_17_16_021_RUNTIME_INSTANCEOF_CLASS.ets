/**
 * @id EXP2_17_16_021_RUNTIME_INSTANCEOF_CLASS
 * @expect runtime
 * @section 17.16
 * @design 运行时验证 instanceof 对用户自定义类的层次检查
 * @note 运行时用例：实际执行验证子类 instanceof 父类为 true，父类 instanceof 子类为 false
 */
class Vehicle {
  name: string = "vehicle"
}
class Car extends Vehicle {
  brand: string = "generic"
}
class Bicycle extends Vehicle {
  gears: int = 1
}

function main(): void {
  let v: Vehicle = new Car()
  // 子类 instanceof 父类 → true
  if (!(v instanceof Vehicle)) {
    throw new Error("FAIL: Car should be instanceof Vehicle")
  }
  if (!(v instanceof Car)) {
    throw new Error("FAIL: Car instance should be instanceof Car")
  }
  // 子类 instanceof 不相关子类 → false
  if (v instanceof Bicycle) {
    throw new Error("FAIL: Car should NOT be instanceof Bicycle")
  }
  // 父类实例 instanceof 子类 → false
  let v2: Vehicle = new Vehicle()
  if (v2 instanceof Car) {
    throw new Error("FAIL: Vehicle should NOT be instanceof Car")
  }
  console.log("PASS: instanceof class hierarchy checks correct")
}
