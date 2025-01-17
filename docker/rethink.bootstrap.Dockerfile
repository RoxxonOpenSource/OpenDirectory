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
RUN pip install \
        pyyaml==4.2b1 \
        pyasn1==0.4.4 \
        pytz==2018.6 \
        itsdangerous==1.1.0 \
        rethinkdb==2.3.0.post6 \
        environs==4.1.0
WORKDIR /project/hyperledger-rbac
COPY ./bin bin/
CMD [ "./bin/setup_db" ]
