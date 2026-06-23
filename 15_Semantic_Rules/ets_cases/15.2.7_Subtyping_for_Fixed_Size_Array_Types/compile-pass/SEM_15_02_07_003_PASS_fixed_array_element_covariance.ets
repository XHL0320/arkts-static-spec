/**
 * @id SEM_15_02_07_003_PASS_fixed_array_element_covariance
 * @expect compile-pass
 * @section 15.2.7
 * @design FixedArray<string> <: FixedArray<Object>（引用类型元素基于元素子类型协变）
 * @note 来自规范 15.2.7 例：let y: FixedArray<Object> = x OK
 */
function main(): void {
    let x: FixedArray<string> = ["aa", "bb", "cc"]
    let y: FixedArray<Object> = x
}
