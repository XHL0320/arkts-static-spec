/**
 * @id NAM_04_02_103_FAIL_PREDEFINED_TYPE_CLASH
 * @expect compile-fail
 * @section 4.2
 * @design 预定义类型名冲突
 * @note 反向用例：验证预定义类型名做变量名编译错误
 */
let number: number = 1;
let String: boolean = true;
function Record(): void {}
interface Object {}
let Array: number = 42;
