/**
 * @id CLS_09_10_030_RUNTIME_TRIPLE_INHERITANCE_METHOD
 * @expect runtime
 * @section 9.10
 * @design 三层继承方法调用链运行时验证
 * @note 运行时用例
 */
class A30 { a(): string { return "A" } }
class B30 extends A30 { b(): string { return this.a() + "B" } }
class C30 extends B30 { c(): string { return this.b() + "C" } }
function main(): void {
  let obj: C30 = new C30()
  if (obj.c() != "ABC") { throw new Error("Expected ABC, got " + obj.c()) }
  console.log("verified")
}
