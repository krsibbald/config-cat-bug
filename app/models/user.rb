class User < ApplicationRecord
  def ask_config_cat_for_key
    ConfigCatClient.get_value(
      'BUG_TRACKING',
      false,
      ConfigCat::User.new(id, email: email)
    )
  end
end
