/**
 * @id SEM_15_02_013
 * @expect compile-fail
 * @section 15.2.7
 * @design 验证 FixedArray<Object> 不是 FixedArray<string> 的子类型（逆变拒绝）
 * @note 反向用例：FixedArray 类型参数不变，Object 数组不可赋值给 string 数组
 *       编译器正确拒绝 ESE0318，与 Spec 一致 ✅
 */
function main(): void {
    let objArr: FixedArray<Object> = new FixedArray<Object>(3);
    let strArr: FixedArray<string> = objArr;
}
