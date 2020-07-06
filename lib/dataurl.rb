# frozen_string_literal: true

# Utilities for generating data URLs for use in HTML, CSS, etc.
module DataURL
  # Generate a data URL.
  # @param mime_type [String] media type of the data to encode
  # @param content [String] content to encode
  # @return [String] RFC 2397-compliant data URL.
  def self.generate(mime_type:, content:)
    "data:#{mime_type};base64,#{[content].pack('m0')}"
  end

  # Guess the MIME type of a file using mailcap's /etc/mime.types.
  # @param filename [String] filename to check against mime.types
  # @return [String] media type or nil if it could not be detected
  def self.guess_mime(filename)
    extension = File.extname(filename)[1..-1].downcase

    File.foreach('/etc/mime.types') do |line|
      match = /\A([^#\s]+)\s+([^#]+)/.match(line)
      return match[1] if match && match[2].split.include?(extension)
    end

    nil
  end
end
