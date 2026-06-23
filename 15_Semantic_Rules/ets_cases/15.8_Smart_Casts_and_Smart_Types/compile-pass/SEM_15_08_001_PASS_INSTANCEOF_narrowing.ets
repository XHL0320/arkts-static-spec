/*
 * @id SEM_15_08_001_PASS_INSTANCEOF_narrowing
 * @expect compile-pass
 * @section 15.8
 * @design 规范 15.8：instanceof 表达式用于类型收窄（智能类型转换）
 * @note 测试 instanceof 检查后的智能类型转换
 */

// 测试 instanceof 收窄
class Animal {
  name: string = "animal"
  
  move(): void {
    console.log(this.name + " moves")
  }
}

class Dog extends Animal {
  bark(): void {
    console.log("Woof!")
  }
}

class Cat extends Animal {
  meow(): void {
    console.log("Meow!")
  }
}

function test_instanceof_narrowing(animal: Animal): void {
  // instanceof 检查前的类型
  let a: Animal = animal
  
  // instanceof 检查后的智能类型转换
  if (a instanceof Dog) {
    // 在这个分支中，a 的智能类型是 Dog
    a.bark()  // OK: 智能类型是 Dog
    a.move()  // OK: Dog 继承自 Animal
  } else if (a instanceof Cat) {
    // 在这个分支中，a 的智能类型是 Cat
    a.meow()  // OK: 智能类型是 Cat
    a.move()  // OK: Cat 继承自 Animal
  } else {
    a.move()  // OK: 智能类型仍然是 Animal
  }
}
