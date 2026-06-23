/**
 * @id SEM_15_07_02_299_FAIL_missing_return_path
 * @expect compile-fail
 * @section 15.7.2
 * @design 规范 15.7.2：存在无return的执行路径时编译错误
 * @note 反向用例：boo的条件return导致某些路径无返回
 */
function boo(condition: boolean): int {
    if (condition) {
        return 1;
    }
}
function main(): void {
    let r: int = boo(true);
}
