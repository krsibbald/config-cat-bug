# frozen_string_literal: true

class UsersRecreatorAction < Struct.new(:options)
  # include ActiveModel::Validations

  def create
    ActiveRecord::Base.transaction do
      delete_all_users
      create_new_users
    end

    true
  rescue ActiveRecord::RecordInvalid => e
    errors.merge!(e.record.errors)

    false
  rescue StandardError
    errors.add(:base, 'Unexpected error, please try again')

    false
  end

  def delete_all_users
    User.destroy_all
  end

  def create_new_users
    User::SEED_USER_ARRAY.each do |user_hash|
      user = User.find_or_create_by( user_hash )
      user.update!(config_cat_test_flag: lookup_config_cat_test_flag(user))
    end
  end

  def lookup_config_cat_test_flag(user)
    ConfigCatClient.get_value(
      'BUG_TRACKING',
      false,
      ConfigCat::User.new(user.id, email: user.email)
    )
  end
end
