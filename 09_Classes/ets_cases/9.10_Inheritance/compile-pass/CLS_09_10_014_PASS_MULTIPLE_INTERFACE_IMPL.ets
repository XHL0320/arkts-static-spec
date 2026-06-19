/**
 * @id CLS_09_10_014_PASS_MULTIPLE_INTERFACE_IMPL
 * @expect compile-pass
 * @section 9.10
 * @design 一个类可以同时实现多个接口，必须实现所有接口中声明的抽象方法和required属性
 * @note 正向用例：类实现两个接口，提供所有方法的实现，字段实现接口属性
 */
interface Identifiable {
  getId(): string
}

interface Named {
  name: string
  getName(): string
}

interface Taggable {
  addTag(tag: string): void
  getTags(): string
}

class Resource implements Identifiable, Named, Taggable {
  public name: string = ""

  private id: string = ""
  private tags: string = ""

  public getId(): string {
    return this.id
  }

  public getName(): string {
    return this.name
  }

  public addTag(tag: string): void {
    this.tags = this.tags + "[" + tag + "]"
  }

  public getTags(): string {
    return this.tags
  }
}

function testMultipleInterfaces(): void {
  let r: Resource = new Resource()
  r.name = "res1"
  let nm: string = r.getName()
  let id: string = r.getId()
  r.addTag("important")
  let tags: string = r.getTags()
}
