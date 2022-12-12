# frozen_string_literal: true

version = File.read(File.expand_path('EVE_EFT_VERSION', __dir__)).strip

Gem::Specification.new do |spec|
  spec.name = 'eve-eft'
  spec.version = version
  spec.authors = 'Bokobo Shahni'
  spec.email = 'shahni@bokobo.space'

  spec.summary = 'Parser for the EVE Fitting Tool format'
  spec.description = 'eve-eft is a parser for the EVE Fitting Tool format used by EVE Online and various 3rd party ' \
                     'tools for ship and structure fittings.'
  spec.homepage = 'https://bokoboshahni.github.io/eve-eft'
  spec.license = 'MIT'

  spec.required_ruby_version = '~> 3.1'
  spec.required_rubygems_version = '>= 3.3.0'

  spec.metadata = {
    'homepage_uri' => spec.homepage,
    'bug_tracker_uri' => 'https://github.com/bokoboshahni/eve-eft/issues',
    'changelog_uri' => 'https://github.com/bokoboshahni/eve-eft/blob/main/CHANGELOG.md',
    'documentation_uri' => "https://bokoboshahni.github.io/eve-eft/v#{version}",
    'mailing_list_uri' => 'https://github.com/bokoboshahni/eve-eft/discussions',
    'source_code_uri' => 'https://github.com/bokoboshahni/eve-eft',

    'rubygems_mfa_required' => 'true'
  }

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|spec)/|\.(?:git|github))})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
