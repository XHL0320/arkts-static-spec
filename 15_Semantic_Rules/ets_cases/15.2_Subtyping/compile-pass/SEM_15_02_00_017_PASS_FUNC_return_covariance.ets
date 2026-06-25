/*
 * @id SEM_15_02_00_017_PASS_FUNC_return_covariance
 * @expect compile-pass
 * @section 15.2
 * @design 规范 15.2.6：函数类型 F 是函数类型 S 的子类型，如果 F 的返回类型是 S 的返回类型的子类型（协变）
 * @note 测试函数类型的返回类型协变
 */

// 测试函数类型的返回类型协变
class Animal {
  name: string = "animal"
}

class Dog extends Animal {
  bark(): void {
    console.log("Woof!")
  }
}

function test_function_return_covariance(): void {
  // 函数类型：(p: Animal) => Dog 是 (p: Animal) => Animal 的子类型
  let f: (p: Animal) => Animal
  let g: (p: Animal) => Dog
  
  g = (p: Animal): Dog => {
    return new Dog()
  }
  
  // 返回类型协变：Dog <: Animal，所以 (p: Animal) => Dog <: (p: Animal) => Animal
  f = g  // OK: 返回类型协变
  
  let result: Animal = f(new Animal())
  console.log(result.name)
}
