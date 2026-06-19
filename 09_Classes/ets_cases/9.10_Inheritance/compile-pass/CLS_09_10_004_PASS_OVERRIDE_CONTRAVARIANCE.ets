/**
 * @id CLS_09_10_004_PASS_OVERRIDE_CONTRAVARIANCE
 * @expect compile-pass
 * @section 9.10
 * @design override-compatible签名：参数类型满足逆变（派生类参数类型是基类参数类型的超类型）
 * @note 正向用例：派生类方法参数类型更宽（超类型），满足逆变规则
 */
class Fruit {
  public name: string = "fruit"
}

class Apple extends Fruit {
  public variety: string = "red"
}

class Sorter {
  public sort(item: Apple): string {
    return "sorting " + item.name
  }
}

class FruitSorter extends Sorter {
  public sort(item: Fruit): string {
    return "sorting fruit " + item.name
  }
}

function testContravariance(): void {
  let fs: FruitSorter = new FruitSorter()
  let f: Fruit = new Fruit()
  let result: string = fs.sort(f)

  let a: Apple = new Apple()
  let result2: string = fs.sort(a)
}
