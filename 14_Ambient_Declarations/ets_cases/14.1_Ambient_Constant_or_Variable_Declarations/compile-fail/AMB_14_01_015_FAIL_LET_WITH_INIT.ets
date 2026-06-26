/**
 * @id AMB_14_01_015_FAIL_LET_WITH_INIT
 * @expect compile-fail
 * @section 14.1
 * @design declare let 有初始化器，违反 spec：ambient 变量不能有初始化器
 * @note 反向用例：验证 ambient let 声明带初始化器应产生编译时错误
 *       当前编译器已正确实施此项校验：ark 报错（ESE125125/ESE1111）
 *       原 D 类不一致已于编译器更新后消除
 */
declare let v = 1
