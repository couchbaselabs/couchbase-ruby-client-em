# Author:: Couchbase <info@couchbase.com>
# Copyright:: 2012 Couchbase, Inc.
# License:: Apache License, Version 2.0
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
#

require 'em-couchbase/version'
require 'yajl/json_gem'
# to use fixes from eventmachine master branch
require 'eventmachine-le'
require 'em-http'
require 'uri'
require 'em-couchbase/util'
require 'em-couchbase/error'
require 'em-couchbase/result'
require 'em-couchbase/packet'
require 'em-couchbase/node'
require 'em-couchbase/configuration'
require 'em-couchbase/client'

module EventMachine
  module Protocols

    module Couchbase

      def self.connect(options = {})
        client = Client.new
        client.connect(options)
        client
      end

    end

  end
end
