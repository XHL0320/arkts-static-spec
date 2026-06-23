/*
 * @id SEM_15_08_013_PASS_INTERSECTION_type_computation
 * @expect compile-pass
 * @section 15.8.2
 * @design 规范 15.8.2：智能类型转换中交集类型的计算
 * @note 测试智能类型转换中的交集类型计算
 */

// 测试智能类型转换中的交集类型计算
interface Printable {
  print(): void
}

class Document implements Printable {
  content: string = "document"
  
  print(): void {
    console.log(this.content)
  }
}

function test_intersection_type_computation(doc: Document | Printable): void {
  // instanceof 检查后的智能类型
  if (doc instanceof Document) {
    // 在这个分支中，doc 的智能类型是 Document & Printable
    doc.print()  // OK: Document 实现了 Printable
    console.log(doc.content)  // OK: Document 有 content 属性
  }
}

// 测试更复杂的交集类型计算
interface Writable {
  write(content: string): void
}

class File implements Printable, Writable {
  content: string = "file"
  
  print(): void {
    console.log(this.content)
  }
  
  write(content: string): void {
    this.content = content
    console.log("Written: " + content)
  }
}

function test_complex_intersection_type(file: File | Printable | Writable): void {
  if (file instanceof File) {
    // 在这个分支中，file 的智能类型是 File & (Printable | Writable)
    file.print()  // OK: File 实现了 Printable
    file.write("new content")  // OK: File 实现了 Writable
  }
}
