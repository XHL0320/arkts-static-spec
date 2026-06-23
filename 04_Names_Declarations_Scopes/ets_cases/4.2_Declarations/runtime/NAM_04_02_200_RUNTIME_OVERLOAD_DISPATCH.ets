/**
 * @id NAM_04_02_200_RUNTIME_OVERLOAD_DISPATCH
 * @expect runtime
 * @section 4.2.1
 * @design 重载函数运行时正确分派
 * @note 运行时用例：验证重载函数根据参数类型分派
 */
function describe(x: number): string { return "number"; }
function describe(x: string): string { return "string"; }

function main(): void {
    if (describe(42) != "number") {
        throw new Error("assertion failed: " + describe(42));
    }
    if (describe("hello") != "string") {
        throw new Error("assertion failed: " + describe("hello"));
    }
    console.log("verified");
}
