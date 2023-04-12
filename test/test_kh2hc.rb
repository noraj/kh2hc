# frozen_string_literal: false

require 'minitest/autorun'
require 'kh2hc'

class Kh2hcTest < Minitest::Test
  def test_convert
    hosts = Kh2hc.convert('test/file_samples/known_hosts')
    host0 = { hash: '483a3a9f1200ebe8e236fb0c92a47cc71b6a211d', salt: '30228bb2232a5d5290951d4658b269a94a0172f9' }
    assert_equal(host0, hosts[0])
    assert_instance_of(Array, hosts)
    assert_instance_of(Hash, hosts[0])
    assert_instance_of(String, hosts[0][:hash])
    assert_instance_of(String, hosts[0][:salt])
  end

  def test_convert1
    assert_equal(File.read('test/file_samples/hashcat_hashes').chomp, Kh2hc.convert1('test/file_samples/known_hosts'))
  end

  def test_hashed?
    assert_equal(true, Kh2hc.hashed?('test/file_samples/known_hosts'))
    assert_equal(false, Kh2hc.hashed?('test/file_samples/known_hosts2'))
  end
end
