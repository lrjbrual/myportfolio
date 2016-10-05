class Form < MailForm::Base
    append :remote_ip

    attribute :name, :validate => true
    attribute :email, :validate => /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    attribute :message, :validate => true
    attribute :nickname,  :captcha => true

    def headers
      {
      subject: "Ryan Jeff Website Email",
      to: "lrbrual@lrjbrual.com",
      from: %("#{name}" <#{email}>)
    }
    end
end
