/**
 * @id AMB_14_04_022_FAIL_STRUCT_NOT_ALLOWED
 * @expect compile-fail
 * @section 14.4
 * @design declare struct 在 ArkTS 中不支持（struct 仅用于 UI 组件声明）
 *          spec 语法包含 struct，但 ArkTS 实现限制 struct 只能在 UI 上下文使用
 * @note 反向用例：declare struct 应产生编译时错误
 *       ⚠️ SPEC 不一致：spec 语法允许 'class'|'struct'，但 ArkTS 不支持 ambient struct
 *       分类：B 类（ArkTS 设计选择）
 */
declare struct Point {
  x: double
  y: double
}
