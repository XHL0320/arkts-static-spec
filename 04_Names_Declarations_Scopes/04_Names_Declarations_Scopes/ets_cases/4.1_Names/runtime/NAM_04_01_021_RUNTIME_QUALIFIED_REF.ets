/**
 * @id NAM_04_01_021_RUNTIME_QUALIFIED_REF
 * @expect runtime
 * @section 4.1
 * @design 运行时限定名引用
 * @note 运行时用例：验证限定名在运行时正确访问
 */
class Data {
    static value: number = 42;
    instanceVal: number = 99;
}
function main(): void {
    let d: Data = new Data();
    if (Data.value != 42) {
        throw new Error("assertion failed: " + Data.value);
    }
    if (d.instanceVal != 99) {
        throw new Error("assertion failed: " + d.instanceVal);
    }
    console.log("verified");
}
