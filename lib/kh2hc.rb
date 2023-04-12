# frozen_string_literal: true

# Ruby internal
# Project internal
require 'kh2hc/version'
# External
require 'ctf_party'

# known_hosts to Hashcat
module Kh2hc
  # Convert OpenSSH known_hosts file hashed with HashKnownHosts to an array of hashes crackable by Hashcat.
  # @param khfile [String] OpenSSH known_hosts file
  # @return [Array<Hash>] An array of Hash. Each Hash has two keys: the `:hash` of the host hash,
  #   the `:salt` of the host hash
  def self.convert(khfile)
    hosts = []
    data = File.read(khfile)
    # |<Magic string>|<salt>|<hash> <key algorithm> <public key sig.>
    data.scan(/^\|1\|([^|]+)\|([^|].+) .+ .+$/).each do |host|
      # hash:salt
      hosts << { hash: host[1].from_b64.to_hex, salt: host[0].from_b64.to_hex }
    end
    hosts
  end

  # Convert OpenSSH known_hosts file hashed with HashKnownHosts to a hash file crackable by Hashcat.
  # @param khfile [String] OpenSSH known_hosts file
  # @return [String] hash file in Hashcat format
  def self.convert1(khfile)
    hc_out = []
    convert(khfile).each do |host|
      hc_out << "#{host[:hash]}:#{host[:salt]}"
    end
    hc_out.join("\n")
  end

  # Check if OpenSSH known_hosts is hashed with HashKnownHosts option or not.
  # @param khfile [String] OpenSSH known_hosts file
  # @return [Boolean] `true` is hashed
  def self.hashed?(khfile)
    File.open(khfile) do |f|
      return f.read(3) == '|1|'
    end
    # Resources friendly version of:
    # data = File.read(khfile)
    # /\A\|1\|/.match?(data)
  end
end
