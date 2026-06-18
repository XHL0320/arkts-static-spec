/**
 * @id STM_08_15_1_013_RUNTIME_multiple_instanceof_subclasses
 * @expect runtime
 * @section 8.15.1
 * @design 验证 catch 块中使用 instanceof 对三个以上不同的 Error 子类型进行区分处理，每个分支正确匹配。
 * @note 运行时测试：分别抛出 RangeError、TypeError、URIError，instanceof 分支正确识别并记录。
 */
class MyURIErr extends Error {}

function main(): void {
    let errorKind: string = "";

    // Test 1: RangeError
    try {
        throw new RangeError("range error value");
    } catch (e) {
        if (e instanceof RangeError) {
            errorKind = "RangeError";
        } else if (e instanceof TypeError) {
            errorKind = "TypeError";
        } else if (e instanceof URIError) {
            errorKind = "URIError";
        } else {
            errorKind = "Error";
        }
    }
    if (errorKind != "RangeError") {
        throw new Error("expected RangeError, got: " + errorKind);
    }

    // Test 2: TypeError
    errorKind = "";
    try {
        throw new TypeError("type error value");
    } catch (e) {
        if (e instanceof RangeError) {
            errorKind = "RangeError";
        } else if (e instanceof TypeError) {
            errorKind = "TypeError";
        } else if (e instanceof URIError) {
            errorKind = "URIError";
        } else {
            errorKind = "Error";
        }
    }
    if (errorKind != "TypeError") {
        throw new Error("expected TypeError, got: " + errorKind);
    }

    // Test 3: URIError
    errorKind = "";
    try {
        throw new MyURIErr();
    } catch (e) {
        if (e instanceof RangeError) {
            errorKind = "RangeError";
        } else if (e instanceof TypeError) {
            errorKind = "TypeError";
        } else if (e instanceof URIError) {
            errorKind = "URIError";
        } else {
            errorKind = "Error";
        }
    }
    if (errorKind != "URIError") {
        throw new Error("expected URIError, got: " + errorKind);
    }

    // Test 4: plain Error falls into else
    errorKind = "";
    try {
        throw new Error("plain error");
    } catch (e) {
        if (e instanceof RangeError) {
            errorKind = "RangeError";
        } else if (e instanceof TypeError) {
            errorKind = "TypeError";
        } else if (e instanceof URIError) {
            errorKind = "URIError";
        } else {
            errorKind = "Error";
        }
    }
    if (errorKind != "Error") {
        throw new Error("expected plain Error, got: " + errorKind);
    }

    console.log("verified");
}
