/**
 * @id CLS_09_10_029_RUNTIME_SUPER_CONSTRUCTOR_ARGS
 * @expect runtime
 * @section 9.10
 * @design 运行时验证子类构造器通过 super(args) 显式委托父类构造器，正确初始化继承字段
 * @note 运行时用例：D29 super(n) 初始化父类 name，子类再初始化自身 age
 */
class B29 { name: string; constructor(n: string) { this.name = n } }
class D29 extends B29 { age: int; constructor(n: string, a: int) { super(n); this.age = a } }
function main(): void { let d: D29 = new D29("test", 30); if (d.name != "test" || d.age != 30) { throw new Error("fail") } console.log("verified") }
