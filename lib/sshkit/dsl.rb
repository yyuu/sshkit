require_relative '../sshkit'

module SSHKit

  module DSL

    def on(hosts, options={}, &block)
      Coordinator.new(hosts).each(options, &block)
    end

  end

end

include SSHKit::DSL
