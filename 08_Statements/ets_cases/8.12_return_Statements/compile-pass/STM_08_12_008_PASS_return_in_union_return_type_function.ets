/**
 * @id STM_08_12_008_PASS_return_in_union_return_type_function
 * @expect compile-pass
 * @section 8.12
 * @design 测试返回类型为union类型(T|undefined)的函数中return语句的使用
 * @note 正向测试：union包含undefined时允许plain return；允许return该union中任一成员类型的表达式
 */

function findItem(arr: int[], target: int): int | undefined {
    for (let i: int = 0; i < arr.length; i++) {
        if (arr[i] == target) {
            return i;
        }
    }
    return;
}

function maybeGetValue(flag: boolean): string | undefined {
    if (flag) {
        return "valid";
    }
    return;
}

function getOrNull(cond: boolean): number | undefined {
    if (cond) {
        return 42;
    } else {
        return;
    }
}
