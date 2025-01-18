#ifdef _WIN32
#include <windows.h>
#endif
#include <iostream>
#include <string>
#include <vector>
// #include <filesystem>
#include <OpenXLSX.hpp>

using namespace OpenXLSX;
// namespace fs = std::filesystem;


#ifdef _WIN32
// 显示消息框的函数
void showMessageBox(const std::string& title, const std::string& text) {
    MessageBoxA(NULL, text.c_str(), title.c_str(), MB_OK | MB_ICONINFORMATION);
}
#else
void showMessageBox(const std::string& title, const std::string& text) {
    std::cout << title << ": " << text << std::endl;
}
#endif

// 合并 Excel 文件的函数
bool mergeExcels(const std::string& outputFile, const std::vector<std::string>& inputFiles) {
    try {
        // 打开第一个文件作为基础文件
        XLDocument outDoc;
        outDoc.open(inputFiles[0]);
        auto outWorksheet = outDoc.workbook().worksheet("Sheet1");

        // 获取表头和已有行数
        int currentRowCount = static_cast<int>(outWorksheet.rowCount());

        // 从第二个文件开始合并
        for (size_t i = 1; i < inputFiles.size(); ++i) {
            XLDocument currDoc;
            currDoc.open(inputFiles[i]);
            auto currWorksheet = currDoc.workbook().worksheet("Sheet1");

            // 从第二行开始读取，跳过表头
            for (uint32_t row = 2; row <= currWorksheet.rowCount(); ++row) {
                int targetRow = ++currentRowCount;
                for (uint32_t col = 1; col <= currWorksheet.columnCount(); ++col) {
                    outWorksheet.cell(targetRow, col).value() = currWorksheet.cell(row, col).value();
                }
            }
            currDoc.close();
        }

        // 保存合并后的文件
        outDoc.saveAs(outputFile);
        outDoc.close();
        return true;
    } catch (const std::exception& e) {
        std::cerr << "合并过程中出现错误: " << e.what() << std::endl;
        return false;
    }
}

int main(int argc, char* argv[]) {
    if (argc < 3) {
        showMessageBox("错误", "请拖拽至少两个Excel文件到该程序上执行");
        return 1;
    }

    // 获取输入文件列表
    std::vector<std::string> inputFiles;
    for (int i = 1; i < argc; ++i) {
        inputFiles.push_back(argv[i]);
    }

    // 合并文件
    std::string outputFile = "merged_output.xlsx";
    if (mergeExcels(outputFile, inputFiles)) {
        showMessageBox("成功", "文件合并成功! 输出文件为: " + outputFile);
    } else {
        showMessageBox("错误", "文件合并失败，请检查文件格式或路径");
    }

    return 0;
}

