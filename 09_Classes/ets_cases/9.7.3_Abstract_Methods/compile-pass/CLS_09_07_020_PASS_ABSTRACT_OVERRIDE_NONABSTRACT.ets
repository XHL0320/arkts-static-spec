/**
 * @id CLS_09_07_020_PASS_ABSTRACT_OVERRIDE_NONABSTRACT
 * @expect compile-pass
 * @section 9.7.3
 * @design 抽象方法覆盖非抽象方法：abstract子类中的abstract方法覆盖基类的非abstract方法
 * @note 正向用例：abstract方法可以覆盖从基类继承的非abstract方法
 */
class Vehicle {
  startEngine(): string {
    return "Engine started"
  }

  stopEngine(): void {
    let msg: string = "Engine stopped"
  }
}

abstract class ElectricVehicle extends Vehicle {
  // Abstract method overrides non-abstract concrete method from Vehicle
  abstract startEngine(): string

  // Abstract method can also override non-abstract method
  abstract stopEngine(): void

  abstract charge(): int
}

class Tesla extends ElectricVehicle {
  startEngine(): string {
    return "Tesla motor started silently"
  }

  stopEngine(): void {
    let msg: string = "Tesla motor stopped"
  }

  charge(): int {
    return 100
  }
}
