require 'kinto_box/kinto_collection'
require 'kinto_box/kinto_object'
module KintoBox
  class KintoBucket
    include KintoObject

    attr_accessor :id
    attr_reader :kinto_client

    def initialize (client, bucket_id)
      raise ArgumentError if bucket_id.nil? || client.nil?

      @kinto_client = client
      @id = bucket_id
      @url_path = "/buckets/#{@id}"
    end

    def collection (collection_id)
      @collection = KintoCollection.new(self, collection_id)
      @collection
    end

    def create_collection(collection_id)
      @kinto_client.post("#{@url_path}/collections", { 'data' => { 'id' => collection_id}})
      collection(collection_id)
    end
  end
end