/**
 * @id EXP2_17_11_3_002_PASS_NAMED_CTOR_MULTI
 * @expect compile-pass
 * @section 17.11.3
 * @design 多个命名构造函数通过参数类型区分：验证多个命名构造函数可以通过不同参数类型区分
 * @note 正向用例：验证多个命名构造函数通过 overload 解析正确区分
 */
class ValueHolder {
  v: Object

  constructor FromInt(n: int) {
    this.v = n
  }
  constructor FromString(s: string) {
    this.v = s
  }
  constructor FromBool(b: boolean) {
    this.v = b
  }
  overload constructor { FromInt, FromString, FromBool }
}

function testNamedCtorMulti(): void {
  let v1: ValueHolder = new ValueHolder(42)
  let v2: ValueHolder = new ValueHolder("hello")
  let v3: ValueHolder = new ValueHolder(true)
  console.log("pass")
}
