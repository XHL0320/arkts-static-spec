/**
 * @id STM_08_14_018_RUNTIME_throw_deeply_nested
 * @expect runtime
 * @section 8.14
 * @design 测试三层嵌套try-catch中throw的传播路径，验证异常逐层被捕获并重新抛出后最终被最外层catch捕获
 * @note 最内层抛出异常后由内层catch捕获并rethrow，中间层catch再次rethrow，最外层catch最终捕获；验证每层传播标记正确、rethrow后代码不执行
 */

function main(): void {
    let hitInnerCatch: boolean = false;
    let hitMiddleCatch: boolean = false;
    let hitOuterCatch: boolean = false;
    let afterInnerCatchRethrow: boolean = false;
    let afterMiddleCatchRethrow: boolean = false;
    let afterInnerThrow: boolean = false;

    try {
        try {
            try {
                throw new Error("deepest throw");
                afterInnerThrow = true;
            } catch (e) {
                hitInnerCatch = true;
                throw e;
                afterInnerCatchRethrow = true;
            }
        } catch (e) {
            hitMiddleCatch = true;
            throw e;
            afterMiddleCatchRethrow = true;
        }
    } catch (e) {
        hitOuterCatch = true;
    }

    if (afterInnerThrow) {
        throw new Error("deeply_nested: code after inner throw should not execute");
    }
    if (afterInnerCatchRethrow) {
        throw new Error("deeply_nested: code after inner catch rethrow should not execute");
    }
    if (afterMiddleCatchRethrow) {
        throw new Error("deeply_nested: code after middle catch rethrow should not execute");
    }
    if (!hitInnerCatch) {
        throw new Error("deeply_nested: inner catch should have been triggered");
    }
    if (!hitMiddleCatch) {
        throw new Error("deeply_nested: middle catch should have been triggered");
    }
    if (!hitOuterCatch) {
        throw new Error("deeply_nested: outer catch should have been triggered");
    }
    console.log("verified");
}
