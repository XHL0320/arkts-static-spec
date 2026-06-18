/**
 * @id STM_08_03_003_PASS_void_function_body
 * @expect compile-pass
 * @section 8.3
 * @design void 函数体作为块，不包含 return 语句（隐式返回），以及包含 return; 无返回值
 * @note 正向用例：void 函数体块，隐式返回行为
 */
function testVoidFunctionNoReturn(): void {
    let x: int = 1;
    let y: int = 2;
    let z: int = x + y;
}

function testVoidFunctionEmptyReturn(): void {
    let x: int = 1;
    if (x > 0) {
        return;
    }
    x = 0;
}

function testVoidFunctionReturnInBranch(): void {
    let x: int = 10;
    if (x > 5) {
        return;
    } else {
        x = 0;
    }
}

function testVoidFunctionReturnInBlock(): void {
    let flag: boolean = true;
    {
        if (flag) {
            return;
        }
    }
    // unreachable but still valid
    flag = false;
}
