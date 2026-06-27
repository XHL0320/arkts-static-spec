/**
 * @id ANN_18_03_003_PASS_IMPORT_WITH_FIELDS
 * @expect compile-pass
 * @section 18.3
 * @design 验证导入的注解带字段值使用
 * @note 正向用例：导入注解 + @Anno({field: value})
 */
import { Named } from "../modules/ANN_18_03_MOD_Named"

@Named({name: "test"})
class C {}
