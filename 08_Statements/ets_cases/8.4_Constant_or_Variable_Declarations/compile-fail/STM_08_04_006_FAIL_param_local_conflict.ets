/**
 * @id STM_08_04_006_FAIL_param_local_conflict
 * @expect compile-fail
 * @section 8.4
 * @design 测试参数与局部变量同名编译错误
 * @note 规范明确：参数和局部变量在同一作用域同名 -> 编译时错误
 */
function testParamLocalConflict(item: boolean): void {
    let item: int[] = [];
}
