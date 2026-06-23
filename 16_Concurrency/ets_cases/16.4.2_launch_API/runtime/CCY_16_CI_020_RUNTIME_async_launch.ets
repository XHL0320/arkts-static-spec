/**
 * @id CCY_16_04_02_024
 * @expect runtime
 * @section 16.4.2
 * @design async + launch 交叉集成运行时
 * @note 运行时用例：验证 async 函数通过 launch 启动执行
 */
function main(): void {
    let p: Promise<number> = launch<number>((): number => {
        return 42;
    });
    if (p == undefined) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
