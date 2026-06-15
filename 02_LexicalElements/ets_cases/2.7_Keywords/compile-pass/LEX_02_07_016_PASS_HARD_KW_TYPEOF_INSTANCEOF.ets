/**
 * @id LEX_02_07_016_PASS_HARD_KW_TYPEOF_INSTANCEOF
 * @expect compile-pass
 * @section 2.7
 * @design 硬关键字: typeof, instanceof, as
 * @note 正向用例：类型操作关键字
 */
class Foo016 {
  v: int = 0
}

function test016(): void {
  let f: Foo016 = new Foo016()
  let b: boolean = f instanceof Foo016
  let t: string = typeof 42
  let obj: Object = f
  let foo: Foo016 = obj as Foo016
}
