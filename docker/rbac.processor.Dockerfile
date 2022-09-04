# Copyright 2019 Contributors to Hyperledger Sawtooth
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# -----------------------------------------------------------------------------
FROM python:3.7.13-buster
RUN apt-get update -y && \
        apt-get install -y apt-file && \
        apt-file update && \
        apt-get install -y gcc
RUN pip install \
        grpcio-tools==1.16.1 \
        itsdangerous==1.1.0 \
        rethinkdb==2.3.0.post6 \
        cryptography==2.4.2 \
        sanic==0.8.3 \
        watchdog==0.9.0 \
        requests==2.20.0 \
        sawtooth-sdk==1.0.1 \
        environs==4.1.0 \
        setuptools
WORKDIR /project/hyperledger-rbac
COPY . .
CMD ["./bin/rbac-tp"]
