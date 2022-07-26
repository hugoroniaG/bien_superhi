CarrierWave.configure do |config|
  config.fog_credentials = {
	provider:              'AWS',                    
	aws_access_key_id:     'AKIA3SVEH3ZPPAE45DWY',
	aws_secret_access_key:'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',      
	use_iam_profile:       true,                     
}
  config.fog_directory  = 'superhiproject'        
end