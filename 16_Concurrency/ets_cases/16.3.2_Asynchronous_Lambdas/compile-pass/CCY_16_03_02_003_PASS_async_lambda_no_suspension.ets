/**
 * @id CCY_16_03_02_003_PASS_async_lambda_no_suspension
 * @expect compile-pass
 * @section 16.3.2
 * @design async lambda 无悬挂点（不定义额外 job）
 * @note 正向用例：验证 async lambda 无悬挂点的语法正确性
 *       edge: async lambda with zero suspension points
 */
function main(): void {
    let fn: () => Promise<number> = async () => {
        return 42;
    };
}
