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

defmodule GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1AddressComponent do
  @moduledoc """
  Represents an address component, such as a street, city, or state.

  ## Attributes

  *   `componentName` (*type:* `GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1ComponentName.t`, *default:* `nil`) - The name for this component.
  *   `componentType` (*type:* `String.t`, *default:* `nil`) - The type of the address component. See [Table 2: Additional types returned by the Places service](https://developers.google.com/places/web-service/supported_types#table2) for a list of possible types.
  *   `confirmationLevel` (*type:* `String.t`, *default:* `nil`) - Indicates the level of certainty that we have that the component is correct.
  *   `inferred` (*type:* `boolean()`, *default:* `nil`) - Indicates that the component was not part of the input, but we inferred it for the address location and believe it should be provided for a complete address.
  *   `replaced` (*type:* `boolean()`, *default:* `nil`) - Indicates the name of the component was replaced with a completely different one, for example a wrong postal code being replaced with one that is correct for the address. This is not a cosmetic change, the input component has been changed to a different one.
  *   `spellCorrected` (*type:* `boolean()`, *default:* `nil`) - Indicates a correction to a misspelling in the component name. The API does not always flag changes from one spelling variant to another, such as when changing "centre" to "center". It also does not always flag common misspellings, such as when changing "Amphitheater Pkwy" to "Amphitheatre Pkwy".
  *   `unexpected` (*type:* `boolean()`, *default:* `nil`) - Indicates an address component that is not expected to be present in a postal address for the given region. We have retained it only because it was part of the input.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :componentName =>
            GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1ComponentName.t()
            | nil,
          :componentType => String.t() | nil,
          :confirmationLevel => String.t() | nil,
          :inferred => boolean() | nil,
          :replaced => boolean() | nil,
          :spellCorrected => boolean() | nil,
          :unexpected => boolean() | nil
        }

  field(:componentName,
    as: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1ComponentName
  )

  field(:componentType)
  field(:confirmationLevel)
  field(:inferred)
  field(:replaced)
  field(:spellCorrected)
  field(:unexpected)
end

defimpl Poison.Decoder,
  for: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1AddressComponent do
  def decode(value, options) do
    GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1AddressComponent.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1AddressComponent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
