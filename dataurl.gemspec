# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'dataurl'
  s.version = '0.0.0'
  s.license = 'MIT'
  s.author = 'Megan Ruggiero'
  s.homepage = 'https://github.com/decadentsoup/dataurl'
  s.summary = 'Generate data URLs for use in HTML, CSS, etc.'
  s.description = <<~DESCRIPTION
    DataURL is an RFC 2397-compliant data URL generator. It consists of both a
    small library and a command-line utility.
  DESCRIPTION
  s.metadata = {
    'bug_tracker_uri' => "#{s.homepage}/issues",
    'documentation_uri' => 'https://www.rubydoc.info/gems/dataurl',
    'homepage_uri' => s.homepage,
    'source_code_uri' => s.homepage,
    'wiki_uri' => "#{s.homepage}/wiki"
  }
  s.files = %w[lib/dataurl.rb]
  s.executables = %w[dataurl]
  s.extra_rdoc_files = %w[README.rdoc]
end
