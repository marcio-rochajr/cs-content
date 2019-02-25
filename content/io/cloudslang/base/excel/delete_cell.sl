########################################################################################################################
#!!
#! @description:Deletes the cell with specified row index and column index in an Excel document. 
#! XLS, XLSX and XLSM formats are supported. 
#!
#! @input excel_file_name: The absolute path to the new Excel document.
#! Examples: c:\temp\test.xls
#! @input worksheet_name: The name of Excel worksheet
#!                        Optional
#! @input row_index: A list of row indexes.
#! Examples: 1:3, 10, 15:20,25
#!                   Optional
#! @input column_index: A list of column indexes
#! Examples: 1:3, 10, 15:20,25
#!                      Optional
#!
#! @output return_result: This is the primary output. Returns the number of rows that were affected.
#! @output return_code: 0 if success, -1 otherwise.
#! @output exception: An error message in case there was an error while deleting the cell.
#!
#! @result SUCCESS: The cell data specified was deleted successfully.
#! @result FAILURE: Failed to delete the cell data specified
#!!#
########################################################################################################################

namespace: io.cloudslang.base.excel.actions

operation: 
  name: delete_cell
  
  inputs: 
    - excel_file_name    
    - excelFileName: 
        default: ${get('excel_file_name', '')}  
        required: false 
        private: true 
    - worksheet_name:  
        required: false  
    - worksheetName: 
        default: ${get('worksheet_name', '')}  
        required: false 
        private: true 
    - row_index:  
        required: false  
    - rowIndex: 
        default: ${get('row_index', '')}  
        required: false 
        private: true 
    - column_index:  
        required: false  
    - columnIndex: 
        default: ${get('column_index', '')}  
        required: false 
        private: true 
    
  java_action: 
    gav: 'io.cloudslang.content:cs-excel:0.0.1-SNAPSHOT'
    class_name: 'io.cloudslang.content.excel.actions.DeleteCell'
    method_name: 'execute'
  
  outputs: 
    - return_result: ${get('returnResult', '')} 
    - return_code: ${get('returnCode', '')} 
    - exception: ${get('exception', '')} 
  
  results: 
    - SUCCESS: ${returnCode=='0'} 
    - FAILURE
