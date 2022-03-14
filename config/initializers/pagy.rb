# frozen_string_literal: true

require "pagy/extras/bootstrap"
require "pagy/extras/countless"
# require "pagy/extras/compact"
# require "pagy/extras/..."
Pagy::DEFAULT[:items]    = 25
Pagy::DEFAULT[:some_var] = 'default value'
pagy = Pagy.new(count: 1000, page: 3, instance_var: 'instance var')