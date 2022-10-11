class User < ApplicationRecord

  SEED_USER_ARRAY =
  [
    {
      first_name: "Katharine",
      last_name: "Sibbald",
      email: 'katharine.sibbald@xplortechnologies.com'
    },
    {
      first_name: 'Katharine',
      last_name: "should be false",
      email: 'should.be.false@xplortechnologies.com'
    },
    {
      first_name: 'Katharine',
      last_name: "should be true",
      email: 'should.be.true@xplortechnologies.com'
    },
    {
      first_name: 'Katharine',
      last_name: "change after app starts",
      email: 'change.after.app.starts@xplortechnologies.com'
    }
  ]

  def ask_config_cat_for_key
    ConfigCatClient.get_value(
      'BUG_TRACKING',
      false,
      ConfigCat::User.new(id, email: email)
    )
  end
end
