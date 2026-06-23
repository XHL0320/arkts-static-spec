/**
 * @id CCY_16_06_01_001_PASS_launch_details
 * @expect compile-pass
 * @section 16.6.1
 * @design launch API 在 async 函数中的基本用法
 * @note 正向用例：纯 ArkTS 静态测试，验证 launch 配合 async lambda 编译通过
 *       launch domain/group/worker ID 参数为 stdlib 高阶 API，见 stdlib 文档
 */
async function main(): Promise<void> {
    let p: Promise<number> = launch<number>(async (): Promise<number> => {
        await Promise.resolve(0);
        return 42;
    });
    let result: number = await p;
    console.log("result: " + result);
}
