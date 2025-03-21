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

defmodule GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesRequest do
  @moduledoc """
  Request proto for AutocompletePlaces.

  ## Attributes

  *   `includePureServiceAreaBusinesses` (*type:* `boolean()`, *default:* `nil`) - Optional. Include pure service area businesses if the field is set to true. Pure service area business is a business that visits or delivers to customers directly but does not serve customers at their business address. For example, businesses like cleaning services or plumbers. Those businesses do not have a physical address or location on Google Maps. Places will not return fields including `location`, `plus_code`, and other location related fields for these businesses.
  *   `includeQueryPredictions` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, the response will include both Place and query predictions. Otherwise the response will only return Place predictions.
  *   `includedPrimaryTypes` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Included primary Place type (for example, "restaurant" or "gas_station") in Place Types (https://developers.google.com/maps/documentation/places/web-service/place-types), or only `(regions)`, or only `(cities)`. A Place is only returned if its primary type is included in this list. Up to 5 values can be specified. If no types are specified, all Place types are returned.
  *   `includedRegionCodes` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Only include results in the specified regions, specified as up to 15 CLDR two-character region codes. An empty set will not restrict the results. If both `location_restriction` and `included_region_codes` are set, the results will be located in the area of intersection.
  *   `input` (*type:* `String.t`, *default:* `nil`) - Required. The text string on which to search.
  *   `inputOffset` (*type:* `integer()`, *default:* `nil`) - Optional. A zero-based Unicode character offset of `input` indicating the cursor position in `input`. The cursor position may influence what predictions are returned. If empty, defaults to the length of `input`.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Optional. The language in which to return results. Defaults to en-US. The results may be in mixed languages if the language used in `input` is different from `language_code` or if the returned Place does not have a translation from the local language to `language_code`.
  *   `locationBias` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias.t`, *default:* `nil`) - Optional. Bias results to a specified location. At most one of `location_bias` or `location_restriction` should be set. If neither are set, the results will be biased by IP address, meaning the IP address will be mapped to an imprecise location and used as a biasing signal.
  *   `locationRestriction` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction.t`, *default:* `nil`) - Optional. Restrict results to a specified location. At most one of `location_bias` or `location_restriction` should be set. If neither are set, the results will be biased by IP address, meaning the IP address will be mapped to an imprecise location and used as a biasing signal.
  *   `origin` (*type:* `GoogleApi.Places.V1.Model.GoogleTypeLatLng.t`, *default:* `nil`) - Optional. The origin point from which to calculate geodesic distance to the destination (returned as `distance_meters`). If this value is omitted, geodesic distance will not be returned.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - Optional. The region code, specified as a CLDR two-character region code. This affects address formatting, result ranking, and may influence what results are returned. This does not restrict results to the specified region. To restrict results to a region, use `region_code_restriction`.
  *   `sessionToken` (*type:* `String.t`, *default:* `nil`) - Optional. A string which identifies an Autocomplete session for billing purposes. Must be a URL and filename safe base64 string with at most 36 ASCII characters in length. Otherwise an INVALID_ARGUMENT error is returned. The session begins when the user starts typing a query, and concludes when they select a place and a call to Place Details or Address Validation is made. Each session can have multiple queries, followed by one Place Details or Address Validation request. The credentials used for each request within a session must belong to the same Google Cloud Console project. Once a session has concluded, the token is no longer valid; your app must generate a fresh token for each session. If the `session_token` parameter is omitted, or if you reuse a session token, the session is charged as if no session token was provided (each request is billed separately). We recommend the following guidelines: * Use session tokens for all Place Autocomplete calls. * Generate a fresh token for each session. Using a version 4 UUID is recommended. * Ensure that the credentials used for all Place Autocomplete, Place Details, and Address Validation requests within a session belong to the same Cloud Console project. * Be sure to pass a unique session token for each new session. Using the same token for more than one session will result in each request being billed individually.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :includePureServiceAreaBusinesses => boolean() | nil,
          :includeQueryPredictions => boolean() | nil,
          :includedPrimaryTypes => list(String.t()) | nil,
          :includedRegionCodes => list(String.t()) | nil,
          :input => String.t() | nil,
          :inputOffset => integer() | nil,
          :languageCode => String.t() | nil,
          :locationBias =>
            GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias.t()
            | nil,
          :locationRestriction =>
            GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction.t()
            | nil,
          :origin => GoogleApi.Places.V1.Model.GoogleTypeLatLng.t() | nil,
          :regionCode => String.t() | nil,
          :sessionToken => String.t() | nil
        }

  field(:includePureServiceAreaBusinesses)
  field(:includeQueryPredictions)
  field(:includedPrimaryTypes, type: :list)
  field(:includedRegionCodes, type: :list)
  field(:input)
  field(:inputOffset)
  field(:languageCode)

  field(:locationBias,
    as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias
  )

  field(:locationRestriction,
    as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction
  )

  field(:origin, as: GoogleApi.Places.V1.Model.GoogleTypeLatLng)
  field(:regionCode)
  field(:sessionToken)
end

defimpl Poison.Decoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesRequest do
  def decode(value, options) do
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
