/**
 * @id SEM_15_07_01_005_PASS_union_target_type
 * @expect compile-pass
 * @section 15.7.1
 * @design 规范 15.7.1 Case 2：联合类型包含数字类型时常量表达式推断
 * @note 正向用例：byte|Object=127, byte|string=127, int|double=1.0, byte|long=128, float|double系列
 */
function main(): void {
    let b: byte | Object = 127;
    b = 128;
    let c: byte | string = 127;
    let d: int | double = 1.0;
    d = 1;
    let e: byte | long = 128;
    let f: float | double = 3.14;
    f = 2f;
    let g: float | double = 3.4e39;
    console.log("union target type inference OK");
}
