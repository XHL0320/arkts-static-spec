/**
 * @id LEX_02_05_036_RT_INSTANCEOF_STATIC_DYNAMIC_FACTOR
 * @expect runtime
 * @section 2.5
 * @design 补充测试因子：instanceof Token 在“静态声明类型为父类、运行时实际类型为子类”场景下正确
 * @note 运行时用例：覆盖 checklist 中静态声明类型/运行时实际类型因子
 */
class Base036 {}
class Derived036 extends Base036 {}
function produceBase036(): Base036 { return new Derived036() }
function main(): void {
  let x: Base036 = produceBase036()
  if (!(x instanceof Base036)) { throw new Error("x not Base036") }
  if (!(x instanceof Derived036)) { throw new Error("x not Derived036") }
}
