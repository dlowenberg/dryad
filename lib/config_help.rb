module ConfigHelp
  # gets the config path for loading .yml files since we want to load test .yml files directly from the
  # dryad-config-example directory so we don't have wacky badness and differences between travis and local environments
  def self.config_path_from_root
    if Rails.env == 'test'
      'dryad-config-example'
    else
      'config'
    end
  end

  def self.config_full_path
    Rails.root.join(self.config_path_from_root).to_s
  end
end