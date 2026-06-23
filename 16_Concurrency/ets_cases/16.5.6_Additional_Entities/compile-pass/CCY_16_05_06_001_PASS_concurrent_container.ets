/**
 * @id CCY_16_05_06_001_PASS_concurrent_container
 * @expect compile-pass
 * @section 16.5.6
 * @design 并发容器使用
 * @note 正向用例：验证线程安全并发容器声明和操作编译通过
 */
let concurrentMap: ConcurrentMap<string, number> = new ConcurrentMap<string, number>();
function f(): void {
    concurrentMap.set("key", 42);
    let val: number | undefined = concurrentMap.get("key");
    console.log(val === undefined ? "undefined" : val.toString());
}
