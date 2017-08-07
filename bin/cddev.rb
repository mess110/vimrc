#!/usr/bin/env ruby

require 'fileutils'

def help
  puts 'Example usage'
  exit 1
end

@config_path = File.expand_path('~/.cddev')

def add_path key, path
  File.open(@config_path, 'a') do |file|
    file.write "#{key}:#{path}"
  end
end

def cd_path key
  lines = File.read(@config_path).lines
  line = lines.select { |l| l.start_with?("#{key}:") }.first
  target_path = line.split(':').last
  cmd = "#{target_path}"
  puts cmd
  system cmd
  Dir.chdir cmd
end

FileUtils.touch(@config_path)
case ARGV.size
when 1
  cd_path ARGV[0]
when 2
  add_path ARGV[0], ARGV[1]
else
  help
end
