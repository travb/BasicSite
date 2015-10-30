#!/bin/bash
#
# Copyright 2014 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License").
# You may not use this file except in compliance with the License.
# A copy of the License is located at
#
#  http://aws.amazon.com/apache2.0
#
# or in the "license" file accompanying this file. This file is distributed
# on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
# express or implied. See the License for the specific language governing
# permissions and limitations under the License.

. $(dirname $0)/common_functions.sh

http_code=$(curl -Ss -LI http://localhost -o /dev/null -w "%{http_code}" 2>/dev/null)

if [ $http_code -eq 200 ] ; then
  msg "Successfully hit site."
  exit 0
else
  msg "Failed to load site."
  exit 1
fi
