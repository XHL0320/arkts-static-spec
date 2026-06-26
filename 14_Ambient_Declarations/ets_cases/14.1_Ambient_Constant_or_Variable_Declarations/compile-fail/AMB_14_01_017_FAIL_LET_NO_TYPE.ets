/**
 * @id AMB_14_01_017_FAIL_LET_NO_TYPE
 * @expect compile-fail
 * @section 14.1
 * @design declare let 无显式类型注解，违反 spec：ambient 变量必须显式类型注解
 * @note 反向用例：验证 ambient let 声明无类型注解应产生编译时错误
 *       当前编译器已正确实施此项校验：ark 报错（ESE125125/ESE1111）
 *       原 D 类不一致已于编译器更新后消除
 */
declare let v
