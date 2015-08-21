# Base API entrypoint class. It mounts all versions
module API
  class Base < Grape::API
    include API::Defaults

    mount API::V1::Base
    add_swagger_documentation(
      mount_path: '/api-docs',
      base_path: '/api',
      api_version: 'v1',
      info: {
        contact: "ngnews@netguru.co",
        description: %Q(NG-news API documentation),
        title: "NG-News"
      },
      markdown: false,
      hide_documentation_path: true,
      hide_format: true,
      include_base_url: true
    )
  end
end
