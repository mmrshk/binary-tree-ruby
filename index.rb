require_relative 'storage.rb'
require_relative 'tree.rb'

if Storage.storage_exist?
  library = Storage.load
  k = 1 #переменная для просчета кол-ва строк
  count = 0  #считате кол-во эментов
  uniq_array = [] #массив для разности двух множеств

  library.each {|el|
    tree = BinarySearchTree.new
    puts "Элементы #{k} дерева : #{el}"

    arr = el.split(" ")

    uniq_array[k] = arr.each { |a|
      tree.insert(a)
      count += 1

    }
    puts tree.inspect
    k += 1
  }
  puts "Разность двух множеств: "
  puts uniq_array[1] - uniq_array[2]
  puts "Количество элементов в двух деревьях #{count}"
  puts
end
