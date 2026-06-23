/**
 * @id STM_08_06_007_FAIL_LabelInLambdaBreak
 * @expect compile-fail
 * @section 8.6
 * @design 在标签循环体内使用lambda表达式，lambda中引用外层标签的break语句
 * @note 标签不能在lambda表达式中使用，编译时报错
 */
function testLabelInLambdaBreak(): void {
    outer: while (true) {
        const g = (): void => {
            break outer;
        };
    }
}
