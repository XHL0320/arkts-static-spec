/**
 * @id CCY_16_03_04_011_PASS_await_in_if_else
 * @expect compile-pass
 * @section 16.3.4
 * @design await 在 if/else 条件分支中
 * @note 正向用例：验证 await 在条件分支中通过编译
 */
async function conditional(flag: boolean): Promise<number> {
    if (flag) {
        return await Promise.resolve(1);
    } else {
        return await Promise.resolve(0);
    }
}
