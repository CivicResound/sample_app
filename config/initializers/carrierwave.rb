CarrierWave.configure do |config|
	config.fog_credentials = {
		provider: "AWS",
		aws_access_key_id: ENV["AKIAIKT354HYWBN7OL5Q"],
		aws_secret_access_key: ENV["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"]
	}
	config.fog_directory = ENV["fearisthemindkiller"]
	config.fog_public = true

	config.cache_dir = "#{Rails.root}/tmp/uploads" 
end