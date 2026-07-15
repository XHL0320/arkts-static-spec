/**
 * @id GEN_05_01_04_001_PASS_WILDCARD_DECL
 * @expect compile-pass
 * @section 5.1.4
 * @design instanceof产生通配符类型的正向验证
 * @note 替代原MyContainer<Object>用例，改为通配符实际场景
 */
class X001<T> { p: T; constructor(v: T) { this.p = v } }
function wildcardDeclTest(): void {
  let obj: Object = new X001<string>("hello")
  if (obj instanceof X001) {
    let w: Any = obj
    console.log("wildcard")
  }
}