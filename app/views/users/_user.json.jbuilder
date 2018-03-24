json.extract! user, :id, :name, :user_mail, :user_phone, :user_address, :user_profession, :user_exp, :user_info, :user_vk, :user_inst, :user_fb, :user_tvitter, :user_telegram, :user_skype, :created_at, :updated_at
json.url user_url(user, format: :json)
