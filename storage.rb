class Storage

	FILE_NAME = 'tree.txt'

	def self.load
    File.open(FILE_NAME) if storage_exist?
  end

	def self.storage_exist?
		File.exist?(FILE_NAME)
	end
end
