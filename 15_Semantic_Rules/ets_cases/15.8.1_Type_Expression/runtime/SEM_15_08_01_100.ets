/**
 * @id SEM_15_08_01_100
 * @expect runtime
 * @section 15.8.1
 * @design 类型表达式运行时
 * @note 运行时用例
 */
class A { name: string = ""; } class D extends A { }
function main(): void { let a: A = new D(); a.name = "x"; if (a.name != "x") throw new Error("fail"); console.log("verified"); }
