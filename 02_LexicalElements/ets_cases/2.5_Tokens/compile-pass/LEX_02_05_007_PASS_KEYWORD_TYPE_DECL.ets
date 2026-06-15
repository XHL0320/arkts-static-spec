/**
 * @id LEX_02_05_007_PASS_KEYWORD_TYPE_DECL
 * @expect compile-pass
 * @section 2.5
 * @design Keywords Token: class/interface/enum 类型声明关键字
 * @note 正向用例：类型声明关键字作为 Token
 */
class MyClass {
  field: int = 0
}

interface MyInterface {
  method(): void
}

enum MyEnum {
  A,
  B,
  C
}

function testKeywordTypeDecl(): void {
  let obj: MyClass = new MyClass()
  let e: MyEnum = MyEnum.A
}
