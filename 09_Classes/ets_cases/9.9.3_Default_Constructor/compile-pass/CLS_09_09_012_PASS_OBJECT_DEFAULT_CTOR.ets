/**
 * @id CLS_09_09_012_PASS_OBJECT_DEFAULT_CTOR
 * @expect compile-pass
 * @section 9.9.3
 * @design 无extends子句的类，隐式继承Object，自动获得public默认构造器
 * @note 正向用例：class无extends无显式构造器，验证默认构造器不调用super()亦可编译
 */
class MyObject {
  id: int = 0
  name: string = "default"
}
function test(): void {
  let obj: MyObject = new MyObject()
}
