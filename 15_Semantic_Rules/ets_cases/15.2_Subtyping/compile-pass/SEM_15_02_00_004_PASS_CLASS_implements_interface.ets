/*
 * @id SEM_15_02_00_004_PASS_CLASS_implements_interface
 * @expect compile-pass
 * @section 15.2.1
 * @design 规范 15.2.1：类 S 实现接口 T，则 S <: T（S 是 T 的子类型）
 * @note 测试类实现接口的子类型关系
 */

// 测试类实现接口的子类型关系
interface Printable {
  print(): void
}

class Document implements Printable {
  content: string = "document"
  
  print(): void {
    console.log(this.content)
  }
}

function test_class_implements_interface(): void {
  let printable: Printable
  let doc: Document = new Document()
  
  // Document 是 Printable 的子类型，可以赋值给 Printable 类型变量
  printable = doc  // OK: Document <: Printable
  
  printable.print()
}
