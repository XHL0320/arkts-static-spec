/**
 * @id CCY_16_CI_001_PASS_async_launch
 * @expect compile-pass
 * @section 16.4.2
 * @design async 上下文中通过 launch API 启动异步任务执行
 * @note 正向用例：验证 async 函数 + launch API 集成编译通过
 */
function main(): void {
    let p: Promise<number> = launch<number>((): number => {
        return 42;
    });
}
