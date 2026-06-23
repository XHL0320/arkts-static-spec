/**
 * @id SEM_15_07_01_006_PASS_union_no_numeric_type
 * @expect compile-pass
 * @section 15.7.1
 * @design 规范 15.7.1 Note：联合类型不含数字类型时使用字面量默认类型
 * @note 正向用例：Object|string = 1 (int默认), x = 1.0 (double默认)
 */
function main(): void {
    let x: Object | string = 1;
    x = 1.0;
    console.log("union no numeric type OK");
}
