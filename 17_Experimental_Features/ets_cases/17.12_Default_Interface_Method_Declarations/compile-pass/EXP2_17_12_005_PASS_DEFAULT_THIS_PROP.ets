/**
 * @id EXP2_17_12_005_PASS_DEFAULT_THIS_PROP
 * @expect compile-pass
 * @section 17.12
 * @design 默认方法中使用 `this` 访问接口中声明的属性，类实现该接口并提供属性值，验证默认方法可正确引用实例属性
 * @note 正向用例：验证默认方法中 this 引用指向实现类实例
 */
interface IDescribable {
  name: string
  version: int

  describe(): string {
    return "Name: " + this.name + ", Version: " + this.version
  }

  getName(): string {
    return this.name
  }
}

class Item implements IDescribable {
  name: string = "Widget"
  version: int = 2
}

function main(): void {
  let item: Item = new Item()
  let desc: string = item.describe()
  let n: string = item.getName()
  console.log(desc + " | getName=" + n)
}
