#### Description

    {
        "name": "XLSX to CSV",
        "image": "platonam/lopco-xlsx-to-csv-worker:dev",
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
                },
                {
                    "name": "line_count",
                    "media_type": "text/plain",
                    "is_file": false
                }
            ]
        }
    }
