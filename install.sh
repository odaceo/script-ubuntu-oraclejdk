#!/bin/bash

# Copyright (C) 2016 Odaceo. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Add the PPA for installing Oracle Java 8
sudo add-apt-repository -y ppa:webupd8team/java

# Update your local package index
sudo apt-get update

# Accept the Oracle license before the installation begins
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

# Install Oracle Java 8
sudo apt-get install -y oracle-java8-installer
