/**
 * @id ANN_18_03_005_FAIL_RENAME_IMPORT
 * @expect compile-fail
 * @section 18.3
 * @design 验证 import 重命名注解导致编译错误
 * @note 反向用例：import {MyAnno as Anno} 不允许
 */
import { MyAnno as Anno } from "../modules/ANN_18_03_MOD_MyAnno"

@Anno
class C {}
