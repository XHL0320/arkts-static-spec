/**
 * @id ERR_12_01_019_RUNTIME_NULL_PTR_CAUGHT
 * @expect runtime
 * @section 12
 * @design 空指针解引用可在try-catch中捕获
 * @note spec: null pointer dereferencing is a runtime error
 */
class C019 { foo(): void {} }
function main(): void {
    try {
        let x: C019 | undefined = undefined
        x!.foo()
    } catch (e) {
        console.log("verified")
    }
}
