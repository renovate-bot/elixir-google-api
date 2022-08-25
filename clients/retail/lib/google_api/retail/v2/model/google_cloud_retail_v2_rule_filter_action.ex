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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleFilterAction do
  @moduledoc """
  * Rule Condition: - No Condition.query_terms provided is a global match. - 1 or more Condition.query_terms provided are combined with OR operator. * Action Input: The request query and filter that are applied to the retrieved products, in addition to any filters already provided with the SearchRequest. The AND operator is used to combine the query's existing filters with the filter rule(s). NOTE: May result in 0 results when filters conflict. * Action Result: Filters the returned objects to be ONLY those that passed the filter.

  ## Attributes

  *   `filter` (*type:* `String.t`, *default:* `nil`) - A filter to apply on the matching condition results. Supported features: * filter must be set. * Filter syntax is identical to SearchRequest.filter. See more details at the Retail Search [user guide](/retail/search/docs/filter-and-order#filter). * To filter products with product ID "product_1" or "product_2", and color "Red" or "Blue": *(id: ANY("product_1", "product_2")) * *AND * *(colorFamilies: ANY("Red", "Blue")) *
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filter => String.t() | nil
        }

  field(:filter)
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleFilterAction do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleFilterAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleFilterAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end