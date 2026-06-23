/**
 * @id SEM_15_11_06_100_RUNTIME_ctor_overload
 * @expect runtime
 * @section 15.11.6
 * @design 构造函数重载运行时
 * @note 运行时用例
 */
class C { v: int = 0; constructor(x: int) { this.v = x; } }
function main(): void { let c: C = new C(42); if (c.v != 42) throw new Error("fail"); console.log("verified"); }
