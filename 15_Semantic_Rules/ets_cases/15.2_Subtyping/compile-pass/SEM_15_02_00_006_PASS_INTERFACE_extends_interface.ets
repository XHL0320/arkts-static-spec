/*
 * @id SEM_15_02_00_006_PASS_INTERFACE_extends_interface
 * @expect compile-pass
 * @section 15.2
 * @design 规范 15.2.1：接口 S 扩展接口 T，则 S <: T（S 是 T 的子类型）
 * @note 测试接口继承的子类型关系
 */

// 测试接口扩展的子类型关系
interface Animal {
  eat(): void
}

interface Pet extends Animal {
  name: string
  play(): void
}

class Dog implements Pet {
  name: string = "dog"
  
  eat(): void {
    console.log("Dog eats")
  }
  
  play(): void {
    console.log("Dog plays")
  }
}

function test_interface_extends_interface(): void {
  let animal: Animal
  let pet: Pet
  let dog: Dog = new Dog()
  
  // Pet 是 Animal 的子类型
  animal = dog  // OK: Dog <: Pet <: Animal
  
  // Dog 是 Pet 的子类型
  pet = dog  // OK: Dog <: Pet
  
  animal.eat()
  pet.play()
}
