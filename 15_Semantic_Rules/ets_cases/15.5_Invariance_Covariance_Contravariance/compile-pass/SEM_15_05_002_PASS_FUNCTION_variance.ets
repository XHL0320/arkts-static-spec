/*
 * @id SEM_15_05_002_PASS_FUNCTION_variance
 * @expect compile-pass
 * @section 15.5
 * @design 规范 15.5：函数类型的参数类型逆变和返回类型协变
 * @note 测试函数类型的方差
 */

// 测试函数类型的方差
class Animal {
  name: string = "animal"
}

class Dog extends Animal {
  bark(): void {
    console.log("Woof!")
  }
}

// 函数类型：(p: Animal) => Dog 是 (p: Animal) => Animal 的子类型（返回类型协变）
type Func1 = (p: Animal) => Animal
type Func2 = (p: Animal) => Dog

function test_function_return_covariance(): void {
  let f1: Func1 = (p: Animal): Animal => {
    return p
  }
  
  let f2: Func2 = (p: Animal): Dog => {
    return new Dog()
  }
  
  // 返回类型协变：Dog <: Animal，所以 Func2 <: Func1
  f1 = f2  // OK: 返回类型协变
    
  console.log("Function return covariance test passed")
}

// 函数类型：(p: Dog) => Animal 是 (p: Animal) => Animal 的子类型（参数类型逆变）
type Func3 = (p: Dog) => Animal

function test_function_parameter_contravariance(): void {
  let f1: Func1 = (p: Animal): Animal => {
    return p
  }
  
  let f3: Func3 = (p: Dog): Animal => {
    return p
  }
  
  // 参数类型逆变：Dog >: Animal，所以 Func3 <: Func1
  f1 = f3  // OK: 参数类型逆变
    
  console.log("Function parameter contravariance test passed")
}
