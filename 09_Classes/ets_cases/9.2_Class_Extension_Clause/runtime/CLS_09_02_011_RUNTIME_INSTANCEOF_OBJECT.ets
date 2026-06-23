/**
 * @id CLS_09_02_011_RUNTIME_INSTANCEOF_OBJECT
 * @expect runtime
 * @section 9.2
 * @design 无extends的类instanceof Object验证
 * @note 运行时用例：验证所有类实例都是Object的子类型
 */
class SimpleObj {
  val: int = 42
}

function main(): void {
  let s = new SimpleObj()
  if (!(s instanceof Object)) {
    throw new Error("SimpleObj instance should be instanceof Object")
  }
  console.log("instanceof Object verified")
}
