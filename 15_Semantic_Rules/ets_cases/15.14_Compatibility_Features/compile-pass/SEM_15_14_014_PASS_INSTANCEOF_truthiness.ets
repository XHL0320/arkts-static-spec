/*
 * @id SEM_15_14_014_PASS_INSTANCEOF_truthiness
 * @expect compile-pass
 * @section 15.14.1
 * @design 规范 15.14.1：instanceof 表达式的真值检查
 * @note 测试 instanceof 表达式的真值检查
 */

// 测试 instanceof 表达式的真值检查
function test_instanceof_truthiness(): void {
  class Animal {
    name: string = "animal"
  }
  
  class Dog extends Animal {
    bark(): void {
      console.log("Woof!")
    }
  }
  
  let animal: Animal = new Dog()
  
  // instanceof 的真值检查
  if (animal instanceof Dog) {
    console.log("animal is Dog")
    animal.bark()
  }
  
  if (!(animal instanceof Animal)) {
    console.log("This won't execute")
  } else {
    console.log("animal is Animal")
  }
  
  console.log("Instanceof truthiness test passed")
}