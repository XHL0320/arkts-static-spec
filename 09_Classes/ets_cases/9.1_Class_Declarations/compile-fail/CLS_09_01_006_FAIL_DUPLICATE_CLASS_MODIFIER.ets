/**
 * @id CLS_09_01_006_FAIL_DUPLICATE_CLASS_MODIFIER
 * @expect compile-fail
 * @section 9.1
 * @design 重复类修饰符导致编译错误
 * @note 反向用例：验证类声明中修饰符不得重复
 */
abstract abstract class DupMod {
}

