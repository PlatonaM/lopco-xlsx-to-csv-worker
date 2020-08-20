#### Description

    {
        "name": "Convert xlsx to csv",
        "description": null,
        "image": "xlsx-to-csv-worker",
        "data_cache_path": "/data_cache",
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
        },
        "configs": {
            "delimiter": null
        }
    }
