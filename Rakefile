# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'bundler/setup'
require 'rspec/core/rake_task'
require 'pry'

require 'resque/plugins/prioritize'
require 'resque/tasks'

# We need to run this workers in the real resque rake tasks for acceptance specs
require_relative 'spec/spec_helper'

RSpec::Core::RakeTask.new(:spec)

task default: :spec
