/**
 * @id SEM_15_07_01_102_FAIL_numeric_target_error
 * @expect compile-fail
 * @section 15.7.1
 * @design 规范 15.7.1 Case 1：目标类型是数字类型时无效赋值
 * @note 反向用例：double不能赋给long, byte越界128, double不能赋给float
 */
function main(): void {
    let l: long = 1;
    l = 1.0;
    let b: byte = 127;
    b = 128;
    let f: float = 123f;
    f = 3.14;
}
