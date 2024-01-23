class Dictionary
  def initialize
    @words = {}
  end

  def add(word, definition)
    @words[word] = definition
    puts "'#{word}' telah ditambahkan atau diperbarui dengan definisi: '#{definition}'"
  end

  def lookup(word)
    definition = @words[word]
    if definition
      puts "Definisi dari '#{word}' adalah: '#{definition}'"
    else
      puts "'#{word}' tidak ditemukan dalam kamus."
    end
  end

  def remove(word)
    if @words.delete(word)
      puts "'#{word}' telah dihapus dari kamus."
    else
      puts "'#{word}' tidak ditemukan dalam kamus, tidak bisa dihapus."
    end
  end

  def list_all
    if @words.empty?
      puts "Kamus masih kosong."
    else
      puts "Kamus saat ini:"
      @words.each { |word, definition| puts "#{word}: #{definition}" }
    end
  end
end

kamus = Dictionary.new

loop do
  puts "\nKamus Sederhana"
  puts "1. Tambah Kata"
  puts "2. Cari Kata"
  puts "3. Hapus Kata"
  puts "4. Tampilkan Semua Kata"
  puts "5. Keluar"
  print "Pilih opsi : "
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Masukkan kata: "
    word = gets.chomp
    print "Masukkan definisi: "
    definition = gets.chomp
    kamus.add(word, definition)
  when 2
    print "Masukkan kata yang ingin dicari: "
    word = gets.chomp
    kamus.lookup(word)
  when 3
    print "Masukkan kata yang ingin dihapus: "
    word = gets.chomp
    kamus.remove(word)
  when 4
    kamus.list_all
  when 5
    puts "Keluar dari program."
    break
  else
    puts "Pilihan tidak valid, silakan coba lagi."
  end
end