/**
 * @id STM_08_08_002_PASS_FOR_TYPE_INFERENCE
 * @expect compile-pass
 * @section 8.8
 * @design forInit 类型推导，let i = 0 自动推导为 int
 * @note 正向用例：for (let i = 0; i < 10; i++) { ... }
 */
function testForTypeInference(): void {
    let sum: int = 0
    for (let i = 0; i < 5; i++) {
        sum = sum + i
    }
}
