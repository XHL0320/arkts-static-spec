/*
 * @id SEM_15_09_001_PASS_CLASS_method_return_covariance
 * @expect compile-pass
 * @section 15.9.3
 * @design 规范 15.9.3：重写方法的返回类型必须是被重写方法返回类型的子类型（协变）
 * @note 测试类方法重写的返回类型协变
 */

// 测试类方法重写的返回类型协变
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
  // 返回类型协变：Dog <: Animal
  override getAnimal(): Dog {
    return new Dog()
  }
}

function test_method_return_covariance(): void {
  let base: Base = new Derived()
  
  // 运行时调用 Derived.getAnimal()
  let animal: Animal = base.getAnimal()
  console.log(animal.name)
  
  // 如果实际类型是 Dog，可以调用 Dog 的方法
  if (animal instanceof Dog) {
    animal.bark()
  }
}
