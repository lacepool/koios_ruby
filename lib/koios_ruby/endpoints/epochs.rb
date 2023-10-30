module KoiosRuby::Endpoints
  module Epochs
    def epochs(epoch=nil, fields: [], order: nil, headers: nil, options: {})
      params = {}
      params.merge!("_epoch_no": epoch) if epoch
      params.merge!(options) if options.any?
      params.merge!(select: fields.join(",")) if fields.any?
      params.merge!(order: order) if order

      args = {}
      args.merge!(headers: headers) if headers
      args.merge!(params: params) if params.any?

      get "epoch_info", **args
    end
  end
end
