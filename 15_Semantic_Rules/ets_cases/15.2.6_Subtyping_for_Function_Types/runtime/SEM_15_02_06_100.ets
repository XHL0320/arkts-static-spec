/**
 * @id SEM_15_02_06_100
 * @expect runtime
 * @section 15.2.6
 * @design 函数类型子类型运行时
 * @note 运行时用例
 */
class A { name: string = ""; } class D extends A { breed: string = ""; }
function use(fn: (d: D) => string): string { let d: D = new D(); d.name = "x"; return fn(d); }
function handler(a: A): string { return a.name; }
function main(): void { let r = use(handler); if (r != "x") throw new Error("fail"); console.log("verified"); }
