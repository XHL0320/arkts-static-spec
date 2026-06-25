/*
 * @id SEM_15_09_00_003_PASS_CLASS_method_parameter_contravariance
 * @expect compile-pass
 * @section 15.9
 * @design 规范 15.9.3：重写方法的每个参数类型必须是被重写方法对应参数类型的超类型（逆变）
 * @note 测试类方法重写的参数类型逆变
 */

// 测试类方法重写的参数类型逆变
class Animal {
  name: string = "animal"
}

class Dog extends Animal {
  bark(): void {
    console.log("Woof!")
  }
}

class Base {
  acceptAnimal(animal: Animal): void {
    console.log("Base accepts: " + animal.name)
  }
}

class Derived extends Base {
  // 参数类型逆变：Dog >: Animal
  override acceptAnimal(animal: Dog): void {
    console.log("Derived accepts dog: " + animal.name)
    animal.bark()
  }
}

function test_method_parameter_contravariance(): void {
  let base: Base = new Derived()
  
  // 编译时类型是 Base，所以 acceptAnimal(Animal) 被调用
  // 运行时类型是 Derived，所以 Derived.acceptAnimal(Dog) 被调用
  // 因为 Dog <: Animal，所以传递 Animal 是安全的
  base.acceptAnimal(new Dog())  // OK: Dog <: Animal
}
