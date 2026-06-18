/**
 * @id STM_08_09_023_FAIL_external_variable_wrong_type
 * @expect compile-fail
 * @section 8.9
 * @design 外部声明变量类型string与迭代元素类型int不匹配（Array<int>迭代），应产生编译时错误
 * @note 元素类型int不能赋值给变量类型string，编译时报错
 */
function testExternalVariableWrongType(): void {
    let arr: Array<int> = [1, 2, 3];
    let s: string = "";
    for (s of arr) {
        console.log(s);
    }
}
