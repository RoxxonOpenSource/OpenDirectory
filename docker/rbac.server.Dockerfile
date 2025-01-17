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
        bcrypt==3.1.7 \
        grpcio-tools==1.16.1 \
        itsdangerous==1.1.0 \
        rethinkdb==2.3.0.post6 \
        sanic==0.8.3 \
        sawtooth-sdk==1.0.1 \
        sanic-cors==0.9.7 \
        websockets==5.0.1 \
        requests==2.21.0 \
        cryptography==2.4.2 \
        aiohttp==3.5.4 \
        ldap3==2.5.2 \
        environs==4.1.0 \
        sanic-openapi==0.6.0 \
        python-socketio==4.3.1 \
        secure==0.2.1
EXPOSE 8000/tcp
WORKDIR /project/hyperledger-rbac
COPY . .
CMD ["./bin/rbac-server"]
