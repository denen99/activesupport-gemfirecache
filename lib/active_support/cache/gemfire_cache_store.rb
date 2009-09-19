require 'activesupport'
require 'lib/gemfire.jar'

import "java.util.Properties"
import "com.gemstone.gemfire.cache.Cache"
import "com.gemstone.gemfire.cache.AttributesFactory"
import "com.gemstone.gemfire.cache.CacheFactory"
import "com.gemstone.gemfire.cache.Region"
import "com.gemstone.gemfire.cache.Scope"
import "com.gemstone.gemfire.distributed.DistributedSystem"

module ActiveSupport
  module Cache
    class GemfireCacheStore < Store
      VERSION = '0.0.5'
      
      class CacheException  < StandardError; end 
      
      def initialize(options = {})
        props = Properties.new();
        props.set_property("name", "GemFireCacheStore")
        ds = DistributedSystem.connect(props)
        @cache = CacheFactory.create(ds)
        @factory = AttributesFactory.new
        @region = @cache.createRegion("RubyGemFireCacheStore",@factory.createRegionAttributes)
      end

      def region
       @region
      end

      def read(key, options = nil)
        super
        @region.get(key)
      rescue CacheException => e
        logger.error("GemfireCache Error (#{e}): #{e.message}")
        false
      end

      def write(key, value, options = {})
        super
        @region.put(key, value)
        true
      rescue CacheException => e
        logger.error("GemfireCache Error (#{e}): #{e.message}")
        false
      end

      def delete(key, options = nil)
        super
        @region.destroy(key)
      rescue CacheException => e
        logger.error("GemfireCache Error (#{e}): #{e.message}")
        false
      end

      def keys
        @region.keys.to_a
      end

      def exist?(key, options = nil)
        @data.containsKey(key)
      end

      def delete_matched(matcher, options = nil)
        super
        raise "Not supported by Gemfire"
      end

      def clear
        @data.clear
        true
      rescue CacheException => e
        logger.error("GemfireCache Error (#{e}): #{e.message}")
        false
      end
    end
  end
end
