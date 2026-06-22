/**
 * @id ENM_11_008_PASS_EXPORTED_ENUM
 * @expect compile-pass
 * @section 11
 * @design exported 枚举所有成员自动 exported
 * @note 正向用例：语法合法
 */
export enum ExportEnum { X, Y, Z }

function testExportedEnum(): void {
  let e: ExportEnum = ExportEnum.X
}