/**
 * @id CCY_16_04_022_RUNTIME_launch_type_param
 * @expect runtime
 * @section 16.4
 * @design launch 显式类型参数
 * @note 运行时用例：验证 launch 显式类型参数返回正确类型 Promise
 */
function main(): void {
    let p: Promise<string> = launch<string>((): string => {
        return "hello";
    });
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
