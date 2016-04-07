# -*- coding: utf-8 -*-
"""
Created on Thu Apr  7 09:43:04 2016

@author: donghochoi
"""

import json
from pandas.io.json import json_normalize


json_parsed = json.load(open("working_set.json","r"))

result = json_normalize(json_parsed, 'data')
