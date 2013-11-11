#!/bin/bash

##
#
#  Copyright 2013 Netflix, Inc.
#
#     Licensed under the Apache License, Version 2.0 (the "License");
#     you may not use this file except in compliance with the License.
#     You may obtain a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#     Unless required by applicable law or agreed to in writing, software
#     distributed under the License is distributed on an "AS IS" BASIS,
#     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#     See the License for the specific language governing permissions and
#     limitations under the License.
#
##

# Set up some environment variables for testing
export SERVICE_BASE_URL=http://localhost:7001
export GENIE_TEST_PREFIX=file:///home/hadoop

cd $HOME/genie/genie-web/src/test/python/jobs

# Test some jobs

python hadoopFSTest.py

python hiveJobTestWithAttachments.py

python pigJobTestWithAttachments.py
