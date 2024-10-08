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

defmodule GoogleApi.WalletObjects.V1.Model.ValueAddedModuleData do
  @moduledoc """
  Data for Value Added module. Required fields are header and uri.

  ## Attributes

  *   `body` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Body to be displayed on the module. Character limit is 50 and longer strings will be truncated.
  *   `header` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Header to be displayed on the module. Character limit is 60 and longer strings will be truncated.
  *   `image` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Image to be displayed on the module. Recommended image ratio is 1:1. Images will be resized to fit this ratio.
  *   `sortIndex` (*type:* `integer()`, *default:* `nil`) - The index for sorting the modules. Modules with a lower sort index are shown before modules with a higher sort index. If unspecified, the sort index is assumed to be INT_MAX. For two modules with the same index, the sorting behavior is undefined.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - URI that the module leads to on click. This can be a web link or a deep link as mentioned in https://developer.android.com/training/app-links/deep-linking.
  *   `viewConstraints` (*type:* `GoogleApi.WalletObjects.V1.Model.ModuleViewConstraints.t`, *default:* `nil`) - Constraints that all must be met for the module to be shown.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :body => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :header => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :image => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :sortIndex => integer() | nil,
          :uri => String.t() | nil,
          :viewConstraints => GoogleApi.WalletObjects.V1.Model.ModuleViewConstraints.t() | nil
        }

  field(:body, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:header, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:image, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:sortIndex)
  field(:uri)
  field(:viewConstraints, as: GoogleApi.WalletObjects.V1.Model.ModuleViewConstraints)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.ValueAddedModuleData do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.ValueAddedModuleData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.ValueAddedModuleData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
