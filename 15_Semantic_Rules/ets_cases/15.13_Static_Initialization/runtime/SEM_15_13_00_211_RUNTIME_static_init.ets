/**
 * @id SEM_15_13_00_211_RUNTIME_static_init
 * @expect runtime
 * @section 15.13
 * @design 静态初始化运行时
 * @note 运行时用例
 */
class C { static val: int = 42; }
function main(): void { if (C.val != 42) throw new Error("fail"); console.log("verified"); }
