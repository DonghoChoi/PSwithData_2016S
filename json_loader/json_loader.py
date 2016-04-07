# -*- coding: utf-8 -*-
"""
Created on Thu Apr  7 09:43:04 2016

@author: donghochoi
"""

# API reference: http://pandas.pydata.org/pandas-docs/stable/generated/pandas.io.json.json_normalize.html
# Online JSON Viewer: http://jsonviewer.stack.hu/

import json
from pandas.io.json import json_normalize


json_parsed = json.load(open("working_set.json","r"))
result = json_normalize(json_parsed, 'data')
