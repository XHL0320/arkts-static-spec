/**
 * @id EXP_07_28_01_015_FAIL_OBJECT_VS_NUMERIC
 * @expect compile-fail
 * @section 7.28.1
 * @design 验证 Object 类型与数值类型等值比较时产生编译时错误
 * @note 反向用例：spec 要求报错，但 ArkTS 实际编译通过
 *       ⚠️ SPEC 不一致：spec 规定"每个操作数必须可转换为数值类型或 bigint 类型"，Object 不可转换
 *       但 ArkTS 实现允许 Object 与数值通过 == 比较（编译时通过）
 *       分类：D 类（Spec 与实现不一致）
 */
function main(): void {
  let o: Object = new Object();
  let i: int = 5;
  let r: boolean = o == i; // compile-time error expected but actually compiles
}
