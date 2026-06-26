/**
 * @id AMB_14_01_022_FAIL_CONST_BOOL_INIT
 * @expect compile-fail
 * @section 14.1
 * @design declare const 布尔初始化器，违反 spec：ambient 常量不能有初始化器（无论类型）
 * @note 反向用例：验证 ambient const 声明带布尔初始化器应产生编译时错误
 *       ⚠️ SPEC 不一致：spec 要求报报错，但 ArkTS 实际编译通过
 *       原 D 类不一致已于编译器更新后消除
 */
declare const c = false
