#!/bin/sh

#   Copyright 2020 InfAI (CC SES)
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.


# Environment variables:
#
# $DEP_INSTANCE
# $JOB_CALLBACK_URL
# $xlsx_file
# $delimiter


out_file_name="$(cat /proc/sys/kernel/random/uuid | echo $(read s; echo ${s//-}))"

cd /data_cache

echo "converting ..."
if ssconvert --import-type="Gnumeric_Excel:xlsx" --export-type="Gnumeric_stf:stf_assistant" -O "separator=$delimiter quoting-on-whitespace=FALSE quoting-mode=never eol=unix format=raw charset=UTF-8" "$xlsx_file" "$out_file_name"; then
    head -5 "$out_file_name"
    line_count=$(( $(wc -l < "$out_file_name") - 1 ))
    echo "total number of lines written:" $line_count
    if ! curl --header 'Content-Type: application/json' --data "{\""$DEP_INSTANCE"\": {\"csv_file\": \""$out_file_name"\"}}" -X POST "$JOB_CALLBACK_URL"; then
        echo "callback failed"
        rm "$out_file_name"
    fi
else
    echo "converting failed"
fi
