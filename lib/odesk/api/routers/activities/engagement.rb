# Licensed under the oDesk's API Terms of Use;
# you may not use this file except in compliance with the Terms.
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Author::    Maksym Novozhylov (mnovozhilov@odesk.com)
# Copyright:: Copyright 2014(c) oDesk.com
# License::   See LICENSE.txt and TOS - http://developers.odesk.com/API-Terms-of-Use

module Odesk
  module Api
    module Routers
      module Activities
        # Engagement Activities
        class Engagement
          ENTRY_POINT = 'api'
          
          # Init
          #
          # Arguments:
          #  client: (Client)
          def initialize(client)
            @client = client
            @client.epoint = ENTRY_POINT 
          end
          
          # List activities for specific engagement
          #
          # Arguments:
          #  company: (String)
          #  team: (String)
          #  engagement_ref: (String)
          #  params: (Hash)
          def get_specific(engagement_ref)
            @client.get '/tasks/v2/tasks/contracts/' + engagement_ref
          end
          
          # Assign engagements to the list of activities
          #
          # Arguments:
          #  company: (String)
          #  team: (String)
          #  engagement: (String)
          #  params: (Hash)
          def assign(company, team, engagement, params)
            @client.put '/otask/v1/tasks/companies/' + company + '/' + team + '/engagements/' + engagement, params
          end
        
        end
      end
    end
  end
end
