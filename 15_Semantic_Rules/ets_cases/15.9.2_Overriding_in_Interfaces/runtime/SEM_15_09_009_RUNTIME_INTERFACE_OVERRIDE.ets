/**
 * @id SEM_15_09_009
 * @expect runtime
 * @section 15.9.2
 * @design 验证接口方法覆写运行时行为：多态派发正确
 * @note 运行时用例：接口引用调用实现类方法
 */
interface I { f(): string; } class C implements I { f(): string { return "ok"; } }
function main(): void { let c: C = new C(); let r = c.f(); if (r != "ok") throw new Error("fail"); console.log("verified"); }
