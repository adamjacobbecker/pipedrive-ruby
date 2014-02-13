module Pipedrive
  class Stage < Base
    def self.deals(id, opts = {})
      Deal.all(get "#{resource_path}/#{id}/deals", query: { everyone: 1 }.merge(opts))
    end
  end
end
