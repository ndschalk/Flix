Paperclip.options[:content_type_mappings] = {
  :jpg => "image/jpeg",
  :png => "image/png",
  :gif => "image/gif"
}

Paperclip.options[:command_path] = '/usr/bin'

require 'paperclip/media_type_spoof_detector'
module Paperclip
  class MediaTypeSpoofDetector
    def spoofed?
      false
    end
  end
end
