# Capybara::BasicAuthHelper

Provides `basic_auth(username, password)` for Capybara integration specs.

## Installation

Add this line to your application's Gemfile:

    group :test do
      gem 'capybara-basic_auth_helper'
    end

And then execute:

    $ bundle

Add the following to your `spec/spec_helper.rb`:

    require 'capybara/basic_auth_helper'


## Usage

From within your integration specs:

```ruby
# spec/integrations/sample_spec.rb
require 'spec_helper'

describe "A Sample Spec" do
  it "visits a page" do
    basic_auth 'admin', '12345' # <=== This bit.
    visit '/admin'
    expect(page).to have_content('Control Panel')
  end
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Copyright 2013, Rob Howard

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
