/**
 * @id CCY_16_03_04_006_PASS_await_union_type
 * @expect compile-pass
 * @section 16.3.4
 * @design await 联合类型 Promise<T> | T 的表达式
 * @note 正向用例：验证 await 在 Promise<T> | T 联合类型的编译通过
 *       spec 示例：await 条件表达式返回 Promise<T> 或 T
 */
async function condAsync(flag: boolean): Promise<string> {
    if (flag) {
        return "direct";
    }
    return "also_direct";
}
async function f(): Promise<void> {
    let v: string = await (condAsync(true));
    console.log(v);
}
