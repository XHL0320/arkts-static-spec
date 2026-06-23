/**
 * @id SEM_15_10_03_200_RUNTIME_ctor_overload
 * @expect runtime
 * @section 15.10.3
 * @design 构造函数重载运行时
 * @note 运行时用例
 */
class C { v: string = ""; constructor(x: int) { this.v = "i"; } constructor(x: string) { this.v = "s"; } }
function main(): void { let c: C = new C(1); if (c.v != "i") throw new Error("fail"); console.log("verified"); }
