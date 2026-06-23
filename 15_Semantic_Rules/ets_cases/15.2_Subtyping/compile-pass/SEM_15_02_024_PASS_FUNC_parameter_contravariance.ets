/*
 * @id SEM_15_02_024_PASS_FUNC_parameter_contravariance
 * @expect compile-pass
 * @section 15.2.6
 * @design 规范 15.2.6：函数类型 F 是函数类型 S 的子类型，如果 F 的每个参数类型是 S 对应参数类型的超类型（逆变）
 * @note 测试函数类型的参数类型逆变
 */

// 测试函数类型的参数类型逆变
class Animal {
  name: string = "animal"
}

class Dog extends Animal {
  bark(): void {
    console.log("Woof!")
  }
}

function test_function_parameter_contravariance(): void {
  // 函数类型：(p: Dog) => Animal 是 (p: Animal) => Animal 的子类型
  let f: (p: Animal) => Animal
  let g: (p: Dog) => Animal
  
  g = (p: Dog): Animal => {
    return p
  }
  
  // 参数类型逆变：Dog >: Animal，所以 (p: Dog) => Animal <: (p: Animal) => Animal
  f = g  // OK: 参数类型逆变
  
  let result: Animal = f(new Dog())
  console.log(result.name)
}
