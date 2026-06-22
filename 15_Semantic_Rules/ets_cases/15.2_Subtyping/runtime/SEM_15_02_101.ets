/**
 * @id SEM_15_02_101
 * @expect runtime
 * @section 15.2
 * @design 子类型运行时
 * @note 运行时用例
 */
class A { x: int = 0; } function main(): void { let a: A = new A(); a.x = 42; if (a.x != 42) throw new Error("fail"); console.log("verified"); }
