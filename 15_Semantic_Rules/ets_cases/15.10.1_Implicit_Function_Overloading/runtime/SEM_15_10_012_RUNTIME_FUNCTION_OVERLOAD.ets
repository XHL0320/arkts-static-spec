/**
 * @id SEM_15_10_012_RUNTIME_FUNCTION_OVERLOAD
 * @expect runtime
 * @section 15.10.1
 * @design 函数重载运行时解析
 * @note 运行时用例
 */
function foo(x: int): string { return "int"; }
function foo(x: string): string { return "str"; }
function main(): void { let r = foo(42); if (r != "int") throw new Error("fail"); console.log("verified"); }
