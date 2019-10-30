+++
fragment = "contact"
disabled = true
date = "2019-10-17"
weight = 600
background = "light"

form_name = "ApplyStarPlan"

title = "欢迎加入繁星计划"
subtitle  = "填写以下表单发送申请<br/>或发送标题为“申请加入繁星计划”的电子邮件至[eco@kaleidochain.io](mailto:eco@kaleidochain.io?subject=申请加入繁星计划)。"
#title_align = "left" # Default is center, can be left, right or center

# PostURL can be used with backends such as mailout from caddy
post_url = "https://formspree.io/xogzrzwx"
email = "eco@kaleidochain.io"
button_text = "发送申请" # defaults to theme default
#netlify = false

# Optional google captcha
# Won't be used if netlify is enabled
#[recaptcha]
#  sitekey = ""

[message]
  success = "感谢您的参与，我们会尽快处理您的申请。" # defaults to theme default
  error = "发送失败，请换用电子邮件发送申请。" # defaults to theme default

# Only defined fields are shown in contact form
[fields.name]
  text = "Your Name *"
  error = "Please enter your name" # defaults to theme default

[fields.email]
  text = "Your Email *"
  error = "Please enter your email address" # defaults to theme default

[fields.phone]
  text = "Your Phone *"
  error = "Please enter your phone number" # defaults to theme default

[fields.message]
  text = "Your Message *"
  error = "Please enter a message" # defaults to theme default

# Optional hidden form fields
# Fields "page" and "site" will be autofilled
[[fields.hidden]]
  name = "from"
  value = "website"

[[fields.hidden]]
  name = "page"
  value = "about"
+++
