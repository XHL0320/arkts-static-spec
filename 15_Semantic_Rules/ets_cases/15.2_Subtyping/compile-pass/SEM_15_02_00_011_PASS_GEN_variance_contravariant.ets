/*
 * @id SEM_15_02_00_011_PASS_GEN_variance_contravariant
 * @expect compile-pass
 * @section 15.2.2
 * @design 规范 15.2.2：泛型类 G<in T>，若 T <: S，则 G<S> <: G<T>（逆变）
 * @note 测试泛型逆变：使用 in 类型参数
 */

// 测试泛型逆变（in 类型参数）
class Animal {
  name: string = "animal"
}

class Dog extends Animal {
  bark(): void {
    console.log("Woof!")
  }
}

class Cage<in T> {
  // 逆变：只能写入 T，不能读取 T
  put(value: T): void {
    console.log("Put value")
  }
}

function test_generic_contravariance(): void {
  let animalCage: Cage<Animal> = new Cage<Animal>()
  let dogCage: Cage<Dog>
  
  // Cage<Animal> 是 Cage<Dog> 的子类型（逆变）
  dogCage = animalCage  // OK: Cage<Animal> <: Cage<Dog>
  
  console.log("Contravariance test passed")
}
