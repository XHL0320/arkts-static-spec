/*
 * @id SEM_15_04_001_PASS_SUBTYPING_assignability
 * @expect compile-pass
 * @section 15.4
 * @design 规范 15.4：T1 可赋给 T2，如果 T1 是 T2 的子类型
 * @note 测试基于子类型的可赋值性
 */

// 测试基于子类型的可赋值性
class Animal {
  name: string = "animal"
}

class Dog extends Animal {
  bark(): void {
    console.log("Woof!")
  }
}

function test_subtyping_assignability(): void {
  let animal: Animal
  let dog: Dog = new Dog()
  
  // Dog 是 Animal 的子类型，所以 Dog 可赋给 Animal
  animal = dog  // OK: 基于子类型的可赋值性
  
  console.log(animal.name)
}

// 测试联合类型的可赋值性
function test_union_assignability(): void {
  let x: number | string
  let y: number = 42
  let z: string = "hello"
  
  // number 是 number | string 的子类型
  x = y  // OK: 基于子类型的可赋值性
    
  // string 是 number | string 的子类型
  x = z  // OK: 基于子类型的可赋值性
    
  console.log("Union assignability test passed")
}
