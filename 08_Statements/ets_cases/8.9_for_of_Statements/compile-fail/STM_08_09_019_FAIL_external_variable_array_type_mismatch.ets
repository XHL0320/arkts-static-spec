/**
 * @id STM_08_09_019_FAIL_external_variable_array_type_mismatch
 * @expect compile-fail
 * @section 8.9
 * @design 外部声明变量类型int与迭代元素类型string不匹配（Array<string>迭代），应产生编译时错误
 * @note 元素类型string不能赋值给变量类型int，迭代Array<string>同样触发类型不匹配错误
 */
function testExternalVariableArrayTypeMismatch(): void {
    let arr: Array<string> = ["a", "b", "c"];
    let num: int = 0;
    for (num of arr) {
        console.log(num.toString());
    }
}
