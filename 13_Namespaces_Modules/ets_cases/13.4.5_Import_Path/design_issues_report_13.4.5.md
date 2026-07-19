# 13.4.5 Import_Path -- Cross-language behavior difference report

## 2026-07-17 Compilation verification

| ID | Issue | Case | @expect | Actual | Status |
|----|-------|------|---------|--------|--------|
| C17 | import relative path | NSM_13_04_5_001_PASS_IMPORT_RELATIVE_PATH | compile-pass | F0014 | unresolved |
| C18 | import path runtime | NSM_13_04_5_003_RUNTIME_IMPORT_PATH | runtime | F0014 | unresolved |

Root cause: es2panda single-file compilation cannot resolve external module paths (F0014). Requires build system support.
