#
# Author:: Arjun Hariharan (<Arjun.Hariharan@Clogeny.com>)
# Cookbook Name:: netapp
# Resource:: qtree
#
# Copyright:: 2014, Chef Software, Inc <legal@getchef.com>
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

actions :create, :delete
default_action :create

attribute :name, :kind_of => String, :required => true, :name_attribute => true
#attribute :svm, :kind_of => String, :required => true
attribute :volume, :kind_of => String, :required => true
attribute :export_policy, :kind_of => String
attribute :mode, :kind_of => String
attribute :oplocks, :kind_of => String, :equal_to => ["enabled", "disabled"] #Possible values: "enabled", "disabled". Default value is the oplock mode of the volume.
attribute :security, :kind_of => String, , :equal_to => ["unix", "ntfs", "mixed"] #Possible values: "unix", "ntfs", or "mixed". Default value is the security style of the volume.
attribute :force, :kind_of => [TrueClass, FalseClass], :default =>false
