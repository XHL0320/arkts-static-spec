/**
 * @id EXP2_17_11_3_004_PASS_NAMED_CTOR_OVERLOAD_BLOCK
 * @expect compile-pass
 * @section 17.11.3
 * @design overload constructor 块声明：验证 overload constructor { ... } 语法正确声明
 * @note 正向用例：验证 overload constructor 块将命名构造函数纳入重载集合
 */
class Factory {
  tag: string

  constructor Default() {
    this.tag = "default"
  }
  constructor WithTag(t: string) {
    this.tag = t
  }
  overload constructor { Default, WithTag }
}

function testOverloadBlock(): void {
  let f1: Factory = new Factory()
  let f2: Factory = new Factory("custom")
  console.log(f1.tag)
  console.log(f2.tag)
}
