# Zeroclipboard::Rails

Add the [ZeroClipboard](https://github.com/zeroclipboard/ZeroClipboard) libary to your Rails app

## Setup

Add this line to your application's `Gemfile`:

```ruby
gem 'zeroclipboard-rails'
```

Then execute:

```bash
$ bundle
```

Add this line to your `app/assets/javascripts/application.js` file:

```javascript
//= require zeroclipboard
```

## Usage

For usage information, browser support  see the [ZeroClipboard documentation](https://github.com/zeroclipboard/ZeroClipboard/blob/master/docs/instructions.md). The 'Setup' section can be skipped as this is covered by the Rails-specific instructions provided above.

## Example (HTML, ERB)

Place the following in a plain HTML or ERB view file:

```html
<div class='demo-area'>
  <button class='my_clip_button' data-clipboard-target='fe_text' data-clipboard-text='Default clipboard text from attribute' id='d_clip_button' title='Click me to copy to clipboard.'>
    <b>Copy To Clipboard...</b>
  </button>
  <h4>
    <label for='fe_text'>Change Copy Text Here</label>
  </h4>
  <textarea cols='50' id='fe_text' rows='3'>Copy me!</textarea>
  <h4>
    <label for='testarea'>Paste Text Here</label>
  </h4>
  <textarea cols='50' id='testarea' rows='3'></textarea>
  <p>
    <button id='clear-test'>Clear Test Area</button>
  </p>
</div>
<script>
  $(document).ready(function() {
    var clip = new ZeroClipboard($("#d_clip_button"))
  });

  $("#clear-test").on("click", function(){
    $("#fe_text").val("Copy me!");
    $("#testarea").val("");
  });
</script>
```

## Example (HAML)

Place the following in a [Haml](http://haml.info/) view file:

```haml
.demo-area
  %button#d_clip_button.my_clip_button{"data-clipboard-target" => "fe_text", "data-clipboard-text" => "Default clipboard text from attribute", :title => "Click me to copy to clipboard."}
    %b Copy To Clipboard...
  %h4
    %label{:for => "fe_text"} Change Copy Text Here
  %textarea#fe_text{:cols => "50", :rows => "3"} Copy me!
  %h4
    %label{:for => "testarea"} Paste Text Here
  %textarea#testarea{:cols => "50", :rows => "3"}
  %p
    %button#clear-test Clear Test Area
:javascript
  $(document).ready(function() {
    var clip = new ZeroClipboard($("#d_clip_button"))
  });

  $("#clear-test").on("click", function(){
    $("#fe_text").val("Copy me!");
    $("#testarea").val("");
  });
```

## Version mapping

This gem is merely a wrapper around [ZeroClipboard](https://github.com/zeroclipboard/ZeroClipboard). The mapping between the gem version and the version of the underlying ZeroClipboard code is as follows:

|`zeroclipboard-rails` gem version|`ZeroClipboard` version|Notes|
|---|---|---|
|[`0.0.3`](https://rubygems.org/gems/zeroclipboard-rails/versions/0.0.3)|[`1.1.7`](https://github.com/zeroclipboard/ZeroClipboard/tree/v1.1.7)|Includes workaround for [CSS zoom bug](https://github.com/zeroclipboard/ZeroClipboard/issues/149)|
|[`0.0.4`](https://rubygems.org/gems/zeroclipboard-rails/versions/0.0.4)|[`1.1.7`](https://github.com/zeroclipboard/ZeroClipboard/tree/v1.1.7)|Includes workaround for [CSS zoom bug](https://github.com/zeroclipboard/ZeroClipboard/issues/149)|
|[`0.0.5`](https://rubygems.org/gems/zeroclipboard-rails/versions/0.0.5)|[`1.1.7`](https://github.com/zeroclipboard/ZeroClipboard/tree/v1.1.7)|Includes workaround for [CSS zoom bug](https://github.com/zeroclipboard/ZeroClipboard/issues/149)|
|[`0.0.6`](https://rubygems.org/gems/zeroclipboard-rails/versions/0.0.6)|[`1.1.7`](https://github.com/zeroclipboard/ZeroClipboard/tree/v1.1.7)|Includes workaround for [CSS zoom bug](https://github.com/zeroclipboard/ZeroClipboard/issues/149)|
|[`0.0.7`](https://rubygems.org/gems/zeroclipboard-rails/versions/0.0.7)|[`1.1.7`](https://github.com/zeroclipboard/ZeroClipboard/tree/v1.1.7)|Includes workaround for [CSS zoom bug](https://github.com/zeroclipboard/ZeroClipboard/issues/149)|
|[`0.0.8`](https://rubygems.org/gems/zeroclipboard-rails/versions/0.0.8)|[`1.2.2`](https://github.com/zeroclipboard/ZeroClipboard/tree/v1.2.2)||
|[`0.0.9`](https://rubygems.org/gems/zeroclipboard-rails/versions/0.0.9)|[`1.2.3`](https://github.com/zeroclipboard/ZeroClipboard/tree/v1.2.3)||
|[`0.0.10`](https://rubygems.org/gems/zeroclipboard-rails/versions/0.0.10)|[`1.2.3`](https://github.com/zeroclipboard/ZeroClipboard/tree/v1.2.3)||
|[`0.0.11`](https://rubygems.org/gems/zeroclipboard-rails/versions/0.0.11)|[`1.3.1`](https://github.com/zeroclipboard/ZeroClipboard/tree/v1.3.1)||
|[`0.0.12`](https://rubygems.org/gems/zeroclipboard-rails/versions/0.0.12)|[`1.3.1`](https://github.com/zeroclipboard/ZeroClipboard/tree/v1.3.1)|[Fix deprecation warning](https://github.com/zeroclipboard/zeroclipboard-rails/pull/17) - [@markrickert](https://github.com/markrickert)|
|[`0.0.13`](https://rubygems.org/gems/zeroclipboard-rails/versions/0.0.13)|[`1.3.5`](https://github.com/zeroclipboard/ZeroClipboard/tree/v1.3.5)||
|[`0.1.0`](https://rubygems.org/gems/zeroclipboard-rails/versions/0.1.0)|[`2.1.2`](https://github.com/zeroclipboard/ZeroClipboard/tree/v2.1.2)|Switch to new zeroclipboard.js major version, see their [releases](https://github.com/zeroclipboard/zeroclipboard/releases)|



## Credits

Credits entirely to the team behind [ZeroClipboard](https://github.com/zeroclipboard/ZeroClipboard)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
