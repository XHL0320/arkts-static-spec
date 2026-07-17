/*
 * @id SEM_15_14_00_015_PASS_INSTANCEOF_truthiness
 * @expect compile-pass
 * @section 15.14
 * @design 规范 15.14.1：instanceof 表达式的真值检查
 * @note 测试 instanceof 表达式的真值检查
 */

class Animal015 {
  name: string = "animal"
}

class Dog015 extends Animal015 {
  bark(): void {
    console.log("Woof!")
  }
}

// 测试 instanceof 表达式的真值检查
function test_instanceof_truthiness(): void {
  let animal: Animal015 = new Dog015()
  
  // instanceof 的真值检查
  if (animal instanceof Dog015) {
    console.log("animal is Dog")
    animal.bark()
  }
  
  if (!(animal instanceof Animal015)) {
    console.log("This won't execute")
  } else {
    console.log("animal is Animal")
  }
  
  console.log("Instanceof truthiness test passed")
}