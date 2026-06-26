/**
 * @id NAM_04_02_107_FAIL_IMPORT_DUPLICATE
 * @expect compile-fail
 * @section 4.2
 * @design 导入声明与本地声明同名冲突
 * @note 反向用例：import引入的名称与本地声明冲突导致编译错误（单文件下用ambient模拟）
 */
declare function importedName(): void;
let importedName: number = 1;
