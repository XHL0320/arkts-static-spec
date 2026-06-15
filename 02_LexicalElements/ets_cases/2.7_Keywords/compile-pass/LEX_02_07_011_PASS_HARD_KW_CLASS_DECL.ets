/**
 * @id LEX_02_07_011_PASS_HARD_KW_CLASS_DECL
 * @expect compile-pass
 * @section 2.7
 * @design 硬关键字: class 用于类声明
 * @note 正向用例：class 关键字
 */
class MyClass011 {
  field: int = 0
}

function test011(): void {
  let obj: MyClass011 = new MyClass011()
}
