/**
 * @id CLS_09_07_018_PASS_OVERRIDE_COVARIANT_RETURN
 * @expect compile-pass
 * @section 9.7.5
 * @design 方法重写：重写方法使用协变返回类型（返回子类型）
 * @note 正向用例：override方法返回类型为超类方法返回类型的子类型，符合协变规则
 */
class Animal018 {
  species: string = "Unknown"

  describe(): string {
    return "Animal: " + this.species
  }
}

class Dog018 extends Animal018 {
  breed: string = "Mixed"

  bark(): string {
    return "Woof!"
  }
}

class Cat018 extends Animal018 {
  color: string = "Black"

  meow(): string {
    return "Meow!"
  }
}

class Shelter018 {
  getAnimal(): Animal018 {
    return new Animal018()
  }

  getDefaultName(): string {
    return "Unnamed"
  }
}

class DogShelter018 extends Shelter018 {
  // Covariant return type: Dog018 is a subtype of Animal018
  override getAnimal(): Dog018 {
    let d: Dog018 = new Dog018()
    d.species = "Canine"
    d.breed = "Golden Retriever"
    return d
  }
}

class CatShelter018 extends Shelter018 {
  // Covariant return type: Cat018 is a subtype of Animal018
  override getAnimal(): Cat018 {
    let c: Cat018 = new Cat018()
    c.species = "Feline"
    c.color = "Orange"
    return c
  }
}

function testCovariantReturn(): void {
  let shelter: Shelter018 = new Shelter018()
  let dogShelter: DogShelter018 = new DogShelter018()
  let catShelter: CatShelter018 = new CatShelter018()

  // Base class reference with covariant overrides
  let s1: Shelter018 = dogShelter
  let a1: Animal018 = s1.getAnimal()
  console.log(a1.describe())

  let s2: Shelter018 = catShelter
  let a2: Animal018 = s2.getAnimal()
  console.log(a2.describe())
}
