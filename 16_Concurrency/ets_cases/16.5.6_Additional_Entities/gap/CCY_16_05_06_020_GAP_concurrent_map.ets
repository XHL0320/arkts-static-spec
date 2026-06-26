/**
 * @id CCY_16_05_06_020_GAP_concurrent_map
 * @expect gap
 * @section 16.5.6
 * @design ConcurrentMap 运行时操作
 * @note 运行时用例：验证 ConcurrentMap 的 set/get 操作正常执行
 */
function main(): void {
    let map: ConcurrentMap<string, number> = new ConcurrentMap<string, number>();
    map.set("key", 42);
    let val: number | undefined = map.get("key");
    if (val == undefined || val != 42) {
        throw new Error("assertion failed");
    }
    console.log("verified");
}
