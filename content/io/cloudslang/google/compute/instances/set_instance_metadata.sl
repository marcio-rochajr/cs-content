#   (c) Copyright 2017 Hewlett-Packard Enterprise Development Company, L.P.
#   All rights reserved. This program and the accompanying materials
#   are made available under the terms of the Apache License v2.0 which accompany this distribution.
#
#   The Apache License is available at
#   http://www.apache.org/licenses/LICENSE-2.0
#
########################################################################################################################
#!!
#! @description: Generated operation description
#!
#! @input project_id: Google Cloud project name.
#!                    Example: 'example-project-a'
#! @input zone: The name of the zone in which the instance lives.
#!              Examples: 'us-central1-a', 'us-central1-b', 'us-central1-c'
#! @input instance_name: Name of the Instance resource to set the metadata to.
#!                      Example: "operation-1234"
#! @input access_token: The access token from get_access_token.
#! @input items_keys_list: Generated description
#! @input items_values_list: Generated description
#! @input items_delimiter: Generated description
#! @input proxy_host: Optional - Proxy server used to access the provider services.
#! @input proxy_port: Optional - Proxy server port used to access the provider services.
#!                    Default: "8080"
#! @input proxy_username: Optional - Proxy server user name.
#! @input proxy_password: Optional - Proxy server password associated with the <proxyUsername> input value.
#! @input pretty_print: Optional - Whether to format the resulting JSON.
#!                      Default: "true"
#!
#! @output return_code: Generated description
#! @output return_result: Generated description
#! @output exception: Generated description
#! @output zone_operation_name: Generated description
#!
#! @result SUCCESS: Generated description
#! @result FAILURE: Generated description
#!!#
########################################################################################################################

namespace: io.cloudslang.google.compute.instances
operation:
  name: set_instance_metadata
  inputs:
    - project_id:
        private: false
        sensitive: false
        required: true
    - projectId:
        default: ${get("project_id", "")}
        private: true
        sensitive: false
        required: false
    - zone:
        private: false
        sensitive: false
        required: true
    - instance_name:
        private: false
        sensitive: false
        required: true
    - instanceName:
        default: ${get("instance_name", "")}
        private: true
        sensitive: false
        required: false
    - access_token:
        private: false
        sensitive: true
        required: true
    - accessToken:
        default: ${get("access_token", "")}
        private: true
        sensitive: true
        required: false
    - items_keys_list:
        private: false
        sensitive: false
        required: false
    - itemsKeysList:
        default: ${get("items_keys_list", "")}
        private: true
        sensitive: false
        required: false
    - items_values_list:
        private: false
        sensitive: false
        required: false
    - itemsValuesList:
        default: ${get("items_values_list", "")}
        private: true
        sensitive: false
        required: false
    - items_delimiter:
        private: false
        sensitive: false
        required: false
    - itemsDelimiter:
        default: ${get("items_delimiter", "")}
        private: true
        sensitive: false
        required: false
    - proxy_host:
        private: false
        sensitive: false
        required: false
    - proxyHost:
        default: ${get("proxy_host", "")}
        private: true
        sensitive: false
        required: false
    - proxy_port:
        private: false
        sensitive: false
        required: false
    - proxyPort:
        default: ${get("proxy_port", "")}
        private: true
        sensitive: false
        required: false
    - proxy_username:
        private: false
        sensitive: false
        required: false
    - proxyUsername:
        default: ${get("proxy_username", "")}
        private: true
        sensitive: false
        required: false
    - proxy_password:
        private: false
        sensitive: true
        required: false
    - proxyPassword:
        default: ${get("proxy_password", "")}
        private: true
        sensitive: true
        required: false
    - pretty_print:
        private: false
        sensitive: false
        required: false
    - prettyPrint:
        default: ${get("pretty_print", "")}
        private: true
        sensitive: false
        required: false

  java_action:
    gav: 'io.cloudslang.content:cs-google-cloud:0.0.1'
    method_name: execute
    class_name: io.cloudslang.content.gcloud.actions.compute.instances.InstanceSetMetadata

  outputs:
    - return_code: ${returnCode}
    - return_result: ${returnResult}
    - exception: ${get('exception', '')}
    - zone_operation_name: ${zoneOperationName}

  results:
    - SUCCESS: ${returnCode=='0'}
    - FAILURE
