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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryAppUninstallEvent do
  @moduledoc """
  App uninstall data.

  ## Attributes

  *   `appId` (*type:* `String.t`, *default:* `nil`) - App id. For PWAs this is the start URL, and for extensions this is the extension id.
  *   `appType` (*type:* `String.t`, *default:* `nil`) - Type of app.
  *   `appUninstallSource` (*type:* `String.t`, *default:* `nil`) - App uninstall source.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appId => String.t() | nil,
          :appType => String.t() | nil,
          :appUninstallSource => String.t() | nil
        }

  field(:appId)
  field(:appType)
  field(:appUninstallSource)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryAppUninstallEvent do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryAppUninstallEvent.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryAppUninstallEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
