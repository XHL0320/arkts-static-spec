/**
 * @id AMB_14_01_020_FAIL_CONST_STRING_INIT
 * @expect compile-fail
 * @section 14.1
 * @design declare const 字符串初始化器，违反 spec：ambient 常量不能有初始化器（无论类型）
 * @note 反向用例：验证 ambient const 声明带字符串初始化器应产生编译时错误
 *       当前编译器已正确实施此项校验：ark 报错（ESE125125/ESE1111）
 *       原 D 类不一致已于编译器更新后消除
 */
declare const c = "world"
