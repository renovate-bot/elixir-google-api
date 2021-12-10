# Copyright 2019 Google LLC
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

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.DataMigration.V1.Model.MySqlConnectionProfile do
  @moduledoc """
  Specifies connection parameters required specifically for MySQL databases.

  ## Attributes

  *   `cloudSqlId` (*type:* `String.t`, *default:* `nil`) - If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  *   `host` (*type:* `String.t`, *default:* `nil`) - Required. The IP or hostname of the source MySQL database.
  *   `password` (*type:* `String.t`, *default:* `nil`) - Required. Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  *   `passwordSet` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates If this connection profile password is stored.
  *   `port` (*type:* `integer()`, *default:* `nil`) - Required. The network port of the source MySQL database.
  *   `ssl` (*type:* `GoogleApi.DataMigration.V1.Model.SslConfig.t`, *default:* `nil`) - SSL configuration for the destination to connect to the source database.
  *   `username` (*type:* `String.t`, *default:* `nil`) - Required. The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudSqlId => String.t() | nil,
          :host => String.t() | nil,
          :password => String.t() | nil,
          :passwordSet => boolean() | nil,
          :port => integer() | nil,
          :ssl => GoogleApi.DataMigration.V1.Model.SslConfig.t() | nil,
          :username => String.t() | nil
        }

  field(:cloudSqlId)
  field(:host)
  field(:password)
  field(:passwordSet)
  field(:port)
  field(:ssl, as: GoogleApi.DataMigration.V1.Model.SslConfig)
  field(:username)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.MySqlConnectionProfile do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.MySqlConnectionProfile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.MySqlConnectionProfile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end