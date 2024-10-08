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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaFieldConfig do
  @moduledoc """
  Configurations for fields of a schema. For example, configuring a field is indexable, or searchable.

  ## Attributes

  *   `advancedSiteSearchDataSources` (*type:* `list(String.t)`, *default:* `nil`) - If this field is set, only the corresponding source will be indexed for this field. Otherwise, the values from different sources are merged. Assuming a page with `` in meta tag, and `` in page map: if this enum is set to METATAGS, we will only index ``; if this enum is not set, we will merge them and index ``.
  *   `completableOption` (*type:* `String.t`, *default:* `nil`) - If completable_option is COMPLETABLE_ENABLED, field values are directly used and returned as suggestions for Autocomplete in CompletionService.CompleteQuery. If completable_option is unset, the server behavior defaults to COMPLETABLE_DISABLED for fields that support setting completable options, which are just `string` fields. For those fields that do not support setting completable options, the server will skip completable option setting, and setting completable_option for those fields will throw `INVALID_ARGUMENT` error.
  *   `dynamicFacetableOption` (*type:* `String.t`, *default:* `nil`) - If dynamic_facetable_option is DYNAMIC_FACETABLE_ENABLED, field values are available for dynamic facet. Could only be DYNAMIC_FACETABLE_DISABLED if FieldConfig.indexable_option is INDEXABLE_DISABLED. Otherwise, an `INVALID_ARGUMENT` error will be returned. If dynamic_facetable_option is unset, the server behavior defaults to DYNAMIC_FACETABLE_DISABLED for fields that support setting dynamic facetable options. For those fields that do not support setting dynamic facetable options, such as `object` and `boolean`, the server will skip dynamic facetable option setting, and setting dynamic_facetable_option for those fields will throw `INVALID_ARGUMENT` error.
  *   `fieldPath` (*type:* `String.t`, *default:* `nil`) - Required. Field path of the schema field. For example: `title`, `description`, `release_info.release_year`.
  *   `fieldType` (*type:* `String.t`, *default:* `nil`) - Output only. Raw type of the field.
  *   `indexableOption` (*type:* `String.t`, *default:* `nil`) - If indexable_option is INDEXABLE_ENABLED, field values are indexed so that it can be filtered or faceted in SearchService.Search. If indexable_option is unset, the server behavior defaults to INDEXABLE_DISABLED for fields that support setting indexable options. For those fields that do not support setting indexable options, such as `object` and `boolean` and key properties, the server will skip indexable_option setting, and setting indexable_option for those fields will throw `INVALID_ARGUMENT` error.
  *   `keyPropertyType` (*type:* `String.t`, *default:* `nil`) - Output only. Type of the key property that this field is mapped to. Empty string if this is not annotated as mapped to a key property. Example types are `title`, `description`. Full list is defined by `keyPropertyMapping` in the schema field annotation. If the schema field has a `KeyPropertyMapping` annotation, `indexable_option` and `searchable_option` of this field cannot be modified.
  *   `metatagName` (*type:* `String.t`, *default:* `nil`) - Optional. The metatag name found in the HTML page. If user defines this field, the value of this metatag name will be used to extract metatag. If the user does not define this field, the FieldConfig.field_path will be used to extract metatag.
  *   `recsFilterableOption` (*type:* `String.t`, *default:* `nil`) - If recs_filterable_option is FILTERABLE_ENABLED, field values are filterable by filter expression in RecommendationService.Recommend. If FILTERABLE_ENABLED but the field type is numerical, field values are not filterable by text queries in RecommendationService.Recommend. Only textual fields are supported. If recs_filterable_option is unset, the default setting is FILTERABLE_DISABLED for fields that support setting filterable options. When a field set to [FILTERABLE_DISABLED] is filtered, a warning is generated and an empty result is returned.
  *   `retrievableOption` (*type:* `String.t`, *default:* `nil`) - If retrievable_option is RETRIEVABLE_ENABLED, field values are included in the search results. If retrievable_option is unset, the server behavior defaults to RETRIEVABLE_DISABLED for fields that support setting retrievable options. For those fields that do not support setting retrievable options, such as `object` and `boolean`, the server will skip retrievable option setting, and setting retrievable_option for those fields will throw `INVALID_ARGUMENT` error.
  *   `schemaOrgPaths` (*type:* `list(String.t)`, *default:* `nil`) - Field paths for indexing custom attribute from schema.org data. More details of schema.org and its defined types can be found at [schema.org](https://schema.org). It is only used on advanced site search schema. Currently only support full path from root. The full path to a field is constructed by concatenating field names, starting from `_root`, with a period `.` as the delimiter. Examples: * Publish date of the root: _root.datePublished * Publish date of the reviews: _root.review.datePublished
  *   `searchableOption` (*type:* `String.t`, *default:* `nil`) - If searchable_option is SEARCHABLE_ENABLED, field values are searchable by text queries in SearchService.Search. If SEARCHABLE_ENABLED but field type is numerical, field values will not be searchable by text queries in SearchService.Search, as there are no text values associated to numerical fields. If searchable_option is unset, the server behavior defaults to SEARCHABLE_DISABLED for fields that support setting searchable options. Only `string` fields that have no key property mapping support setting searchable_option. For those fields that do not support setting searchable options, the server will skip searchable option setting, and setting searchable_option for those fields will throw `INVALID_ARGUMENT` error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advancedSiteSearchDataSources => list(String.t()) | nil,
          :completableOption => String.t() | nil,
          :dynamicFacetableOption => String.t() | nil,
          :fieldPath => String.t() | nil,
          :fieldType => String.t() | nil,
          :indexableOption => String.t() | nil,
          :keyPropertyType => String.t() | nil,
          :metatagName => String.t() | nil,
          :recsFilterableOption => String.t() | nil,
          :retrievableOption => String.t() | nil,
          :schemaOrgPaths => list(String.t()) | nil,
          :searchableOption => String.t() | nil
        }

  field(:advancedSiteSearchDataSources, type: :list)
  field(:completableOption)
  field(:dynamicFacetableOption)
  field(:fieldPath)
  field(:fieldType)
  field(:indexableOption)
  field(:keyPropertyType)
  field(:metatagName)
  field(:recsFilterableOption)
  field(:retrievableOption)
  field(:schemaOrgPaths, type: :list)
  field(:searchableOption)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaFieldConfig do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaFieldConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaFieldConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
