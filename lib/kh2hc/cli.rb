# frozen_string_literal: true

# Ruby internal
# Project internal
# External
require 'docopt'

module Kh2hc
  # module use for the CLI binary only, not required by the library
  module CLI
    doc = <<~DOCOPT
      kh2hc v#{Kh2hc::VERSION}

      Usage:
        kh2hc <know_hosts> [<hashcat>] [--no-color --debug]
        kh2hc -h | --help
        kh2hc --version

      Parameters:
        <know_hosts>    OpenSSH known_hosts file hashed with HashKnownHosts
        <hashcat>       Output file containing hash crackable by Hashcat

      Options:
        --no-color      Disable colorized output
        --debug         Display arguments
        -h, --help      Show this screen
        --version       Show version
    DOCOPT

    begin
      args = Docopt.docopt(doc, version: Kh2hc::VERSION)
      Paint.mode = 0 if args['--no-color']
      puts args if args['--debug']
      if args['<know_hosts>']
        if Kh2hc.hashed?(args['<know_hosts>'])
          hc = Kh2hc.convert1(args['<know_hosts>'])
          if args['<hashcat>']
            File.write(args['<hashcat>'], hc)
          else
            puts hc
          end
        else
          puts 'Good news, the hosts file is not hashed'
        end
      end
    rescue Docopt::Exit => e
      puts e.message
    end
  end
end
