/**
 * @id STM_08_12_005_PASS_multiple_return_paths
 * @expect compile-pass
 * @section 8.12
 * @design 测试函数中多个return语句分支持续编译通过
 * @note 正向测试：函数中包含多条件return路径，每条路径均返回正确类型，编译通过
 */
function testMultipleReturns(b: boolean): string {
    if (b) {
        return "true";
    }
    return "false";
}

function testEarlyReturn(x: int): int {
    if (x < 0) {
        return 0;
    }
    return x;
}
