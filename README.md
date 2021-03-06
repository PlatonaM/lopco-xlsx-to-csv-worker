## lopco-xlsx-to-csv-worker

Convert Excel xlsx files to CSV files.

### Configuration

`delimiter`: Delimiter to be used in the CSV file.

### Inputs

Type: single

`xlsx_file`: Excel file.

### Outputs

Type: single

`csv_file`: CSV file.

### Description

    {
        "name": "XLSX to CSV",
        "image": "platonam/lopco-xlsx-to-csv-worker:latest",
        "data_cache_path": "/data_cache",
        "description": "Convert a Microsoft Excel Open XML Spreadsheet file to Comma-Separated Values.",
        "configs": {
            "delimiter": null
        },
        "input": {
            "type": "single",
            "fields": [
                {
                    "name": "xlsx_file",
                    "media_type": "application/vnd.ms-excel",
                    "is_file": true
                }
            ]
        },
        "output": {
            "type": "single",
            "fields": [
                {
                    "name": "csv_file",
                    "media_type": "text/csv",
                    "is_file": true
                }
            ]
        }
    }
