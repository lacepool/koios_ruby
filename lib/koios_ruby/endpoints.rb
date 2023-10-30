require_relative 'endpoints/epochs'
require_relative 'endpoints/transactions'
require_relative 'endpoints/pools'

module KoiosRuby
  module Endpoints
    include KoiosRuby::Endpoints::Epochs
    include KoiosRuby::Endpoints::Transactions
    include KoiosRuby::Endpoints::Pools
  end
end
