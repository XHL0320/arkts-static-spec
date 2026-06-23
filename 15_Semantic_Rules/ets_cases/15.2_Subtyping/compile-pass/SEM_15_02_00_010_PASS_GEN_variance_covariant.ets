/*
 * @id SEM_15_02_00_010_PASS_GEN_variance_covariant
 * @expect compile-pass
 * @section 15.2.2
 * @design 规范 15.2.2：泛型类 G<out T>，若 S <: T，则 G<S> <: G<T>（协变）
 * @note 测试泛型协变：使用 out 类型参数
 */

// 测试泛型协变（out 类型参数）
class Animal {
  name: string = "animal"
}

class Dog extends Animal {
  bark(): void {
    console.log("Woof!")
  }
}

class Box<out T> {
  value: T
  
  constructor(v: T) {
    this.value = v
  }
}

function test_generic_covariance(): void {
  let dogBox: Box<Dog> = new Box<Dog>(new Dog())
  let animalBox: Box<Animal>
  
  // Box<Dog> 是 Box<Animal> 的子类型（协变）
  animalBox = dogBox  // OK: Box<Dog> <: Box<Animal>
  
  console.log(animalBox.value.name)
}
