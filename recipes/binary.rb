#
# Cookbook Name:: fabio
# Recipe:: binary
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

url = [node['fabio']['release_url'],
       'v' + node['fabio']['version'],
       "fabio-#{node['fabio']['version']}-go#{node['fabio']['go_version']}_linux-amd64"
      ].join('/')

remote_file 'fabio_release_binary' do
  path node['fabio']['install_path']
  source url
  owner 'root'
  mode '0755'
  action :create
end