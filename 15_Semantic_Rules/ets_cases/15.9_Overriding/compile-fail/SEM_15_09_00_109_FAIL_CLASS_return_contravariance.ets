/*
 * @id SEM_15_09_00_109_FAIL_CLASS_return_contravariance
 * @expect compile-fail
 * @section 15.9
 * @design 规范 15.9.3：重写方法的返回类型必须是被重写方法返回类型的子类型（不允许返回类型逆变）
 * @note 测试无效重写：返回类型逆变（应该编译失败）
 */

// 测试无效重写：返回类型逆变（编译失败）
class Animal {
  name: string = "animal"
}

class Dog extends Animal {
  bark(): void {
    console.log("Woof!")
  }
}

class Base {
  getAnimal(): Animal {
    return new Animal()
  }
}

class Derived extends Base {
  // 编译失败：返回类型逆变（Animal 是 Dog 的超类型，但重写方法不能扩大返回类型）
  override getAnimal(): Animal {
    return new Animal()
  }
}
