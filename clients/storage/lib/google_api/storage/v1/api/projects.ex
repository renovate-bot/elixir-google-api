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

defmodule GoogleApi.Storage.V1.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.Storage.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Creates a new HMAC key for the specified service account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Project ID owning the service account.
  *   `service_account_email` (*type:* `String.t`) - Email address of the service account.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Upload protocol for media (e.g. "media", "multipart", "resumable").
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.HmacKey{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_projects_hmac_keys_create(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Storage.V1.Model.HmacKey.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def storage_projects_hmac_keys_create(
        connection,
        project_id,
        service_account_email,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :userIp => :query,
      :userProject => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/storage/v1/projects/{projectId}/hmacKeys", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :serviceAccountEmail, service_account_email)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.HmacKey{}])
  end

  @doc """
  Deletes an HMAC key.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Project ID owning the requested key
  *   `access_id` (*type:* `String.t`) - Name of the HMAC key to be deleted.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Upload protocol for media (e.g. "media", "multipart", "resumable").
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_projects_hmac_keys_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:ok, Tesla.Env.t()} | {:ok, list()} | {:error, any()}
  def storage_projects_hmac_keys_delete(
        connection,
        project_id,
        access_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :userIp => :query,
      :userProject => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/storage/v1/projects/{projectId}/hmacKeys/{accessId}", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "accessId" => URI.encode(access_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Retrieves an HMAC key's metadata

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Project ID owning the service account of the requested key.
  *   `access_id` (*type:* `String.t`) - Name of the HMAC key.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Upload protocol for media (e.g. "media", "multipart", "resumable").
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.HmacKeyMetadata{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_projects_hmac_keys_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Storage.V1.Model.HmacKeyMetadata.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def storage_projects_hmac_keys_get(
        connection,
        project_id,
        access_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :userIp => :query,
      :userProject => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/storage/v1/projects/{projectId}/hmacKeys/{accessId}", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "accessId" => URI.encode(access_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.HmacKeyMetadata{}])
  end

  @doc """
  Retrieves a list of HMAC keys matching the criteria.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Name of the project in which to look for HMAC keys.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Upload protocol for media (e.g. "media", "multipart", "resumable").
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of items to return in a single page of responses. The service uses this parameter or 250 items, whichever is smaller. The max number of items per page will also be limited by the number of distinct service accounts in the response. If the number of service accounts in a single response is too high, the page will truncated and a next page token will be returned.
      *   `:pageToken` (*type:* `String.t`) - A previously-returned page token representing part of the larger set of results to view.
      *   `:serviceAccountEmail` (*type:* `String.t`) - If present, only keys for the given service account are returned.
      *   `:showDeletedKeys` (*type:* `boolean()`) - Whether or not to show keys in the DELETED state.
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.HmacKeysMetadata{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_projects_hmac_keys_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Storage.V1.Model.HmacKeysMetadata.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def storage_projects_hmac_keys_list(connection, project_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query,
      :serviceAccountEmail => :query,
      :showDeletedKeys => :query,
      :userProject => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/storage/v1/projects/{projectId}/hmacKeys", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.HmacKeysMetadata{}])
  end

  @doc """
  Updates the state of an HMAC key. See the [HMAC Key resource descriptor](https://cloud.google.com/storage/docs/json_api/v1/projects/hmacKeys/update#request-body) for valid states.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Project ID owning the service account of the updated key.
  *   `access_id` (*type:* `String.t`) - Name of the HMAC key being updated.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Upload protocol for media (e.g. "media", "multipart", "resumable").
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request.
      *   `:body` (*type:* `GoogleApi.Storage.V1.Model.HmacKeyMetadata.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.HmacKeyMetadata{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_projects_hmac_keys_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Storage.V1.Model.HmacKeyMetadata.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def storage_projects_hmac_keys_update(
        connection,
        project_id,
        access_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :userIp => :query,
      :userProject => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/storage/v1/projects/{projectId}/hmacKeys/{accessId}", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "accessId" => URI.encode(access_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.HmacKeyMetadata{}])
  end

  @doc """
  Get the email address of this project's Google Cloud Storage service account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Storage.V1.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Project ID
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Upload protocol for media (e.g. "media", "multipart", "resumable").
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:userProject` (*type:* `String.t`) - The project to be billed for this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Storage.V1.Model.ServiceAccount{}}` on success
  *   `{:error, info}` on failure
  """
  @spec storage_projects_service_account_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Storage.V1.Model.ServiceAccount.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def storage_projects_service_account_get(
        connection,
        project_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :userIp => :query,
      :userProject => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/storage/v1/projects/{projectId}/serviceAccount", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.ServiceAccount{}])
  end
end
