/**
 * @id SEM_15_02_08_100
 * @expect runtime
 * @section 15.2.8
 * @design 交叉类型运行时
 * @note 运行时用例
 */
interface A { a: int; } function main(): void { let x: A = { a: 42 }; if (x.a != 42) throw new Error("fail"); console.log("verified"); }
