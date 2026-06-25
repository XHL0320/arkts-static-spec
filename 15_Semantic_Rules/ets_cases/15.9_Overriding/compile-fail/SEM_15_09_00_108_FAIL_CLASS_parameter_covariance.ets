/*
 * @id SEM_15_09_00_108_FAIL_CLASS_parameter_covariance
 * @expect compile-fail
 * @section 15.9
 * @design 规范 15.9.3：重写方法的参数类型必须是被重写方法参数类型的超类型（不允许参数协变）
 * @note 测试无效重写：参数协变（应该编译失败）
 */

// 测试无效重写：参数协变（编译失败）
class Animal {
  name: string = "animal"
}

class Dog extends Animal {
  bark(): void {
    console.log("Woof!")
  }
}

class Base {
  acceptDog(dog: Dog): void {
    console.log("Base accepts dog")
  }
}

class Derived extends Base {
  // 编译失败：参数协变（Dog 是 Animal 的子类型，但重写方法不能缩小参数类型）
  override acceptDog(animal: Animal): void {
    console.log("Derived accepts animal")
  }
}
