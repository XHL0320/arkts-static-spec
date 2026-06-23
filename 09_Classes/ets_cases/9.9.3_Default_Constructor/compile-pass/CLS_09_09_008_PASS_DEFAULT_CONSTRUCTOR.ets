/**
 * @id CLS_09_09_008_PASS_DEFAULT_CONSTRUCTOR
 * @expect compile-pass
 * @section 9.9.3
 * @design 默认构造器隐式声明 — 类无显式构造器时自动生成public无参构造器
 * @note 正向用例：无显式constructor的类可正常实例化
 */
class NoCtor { x: int = 42 }
function test(): void {
  let obj: NoCtor = new NoCtor()
}
