/**
 * @id EXP2_17_9_4_011_COMPILE_FAIL_NAMECONFLICT_IMPORT_CONFLICT
 * @expect compile-fail
 * @section 17.9.4
 * @design 验证 overload 名与导入符号冲突——应报编译错误
 * @note 反向用例：overload 声明与 import 的同名实体冲突
 */
import { PI } from "@std/math"
overload function PI(v: int): double { return 3.14 }
overload function PI(v: string): double { return 3.14 }

function main(): void {}
