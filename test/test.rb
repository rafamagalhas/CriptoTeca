#encoding: utf-8

require "test/unit"
require "../crypto"

class TestCases < Test::Unit::TestCase
  # ENCRYPT

  def test_encrypt_md5
    # test string from wikipedia
    # http://en.wikipedia.org/wiki/Md5

    crypto = Crypto.new("md5")
    assert_equal("9e107d9d372bb6826bd81d3542a419d6", crypto.encrypt("The quick brown fox jumps over the lazy dog"))
  end

  def test_encrypt_sha1
    # test string from wikipedia
    # http://en.wikipedia.org/wiki/Sha1

    crypto = Crypto.new("sha1")
    assert_equal("2fd4e1c67a2d28fced849ee1bb76e7391b93eb12", crypto.encrypt("The quick brown fox jumps over the lazy dog"))
  end
  
  def test_encrypt_sha256
    # test string from wikipedia
    # http://en.wikipedia.org/wiki/Sha2

    crypto = Crypto.new("sha256")
    assert_equal("d7a8fbb307d7809469ca9abcb0082e4f8d5651e46d3cdb762d02d0bf37c9e592", crypto.encrypt("The quick brown fox jumps over the lazy dog"))
  end

  def test_encrypt_sha384
    # test string from wikipedia
    # http://en.wikipedia.org/wiki/Sha2

    crypto = Crypto.new("sha384")
    assert_equal("ca737f1014a48f4c0b6dd43cb177b0afd9e5169367544c494011e3317dbf9a509cb1e5dc1e85a941bbee3d7f2afbc9b1", crypto.encrypt("The quick brown fox jumps over the lazy dog"))
  end

  def test_encrypt_sha512
    # test string from wikipedia
    # http://en.wikipedia.org/wiki/Sha2

    crypto = Crypto.new("sha512")
    assert_equal("07e547d9586f6a73f73fbac0435ed76951218fb7d0c8d788a309d785436bbb642e93a252a954f23912547d1e8a3b5ed6e1bfd7097821233fa0538f3db854fee6", crypto.encrypt("The quick brown fox jumps over the lazy dog"))
  end

  def test_encrypt_base64
    crypto = Crypto.new("base64")
    assert_equal("VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wcyBvdmVyIHRoZSBsYXp5IGRvZw==", crypto.encrypt("The quick brown fox jumps over the lazy dog"))
  end

  def test_encrypt_cryptograph_non_supported
    crypto = Crypto.new("md4")
    assert_equal("Criptografia não suportada", crypto.encrypt("MD4 TEST"))
  end
end