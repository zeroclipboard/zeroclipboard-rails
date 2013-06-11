# Zeroclipboard::Rails

Add the [ZeroClipboard](https://github.com/jonrohan/ZeroClipboard) libary to your Rails app

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

For usage information, browser support  see the [ZeroClipboard documentation](https://github.com/jonrohan/ZeroClipboard/blob/master/docs/instructions.md). The 'Setup' section can be skipped as this is covered by the Rails-specific instructions provided above.

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

This gem is merely a wrapper around [ZeroClipboard](https://github.com/jonrohan/ZeroClipboard). The mapping between the gem version and the version of the underlying ZeroClipboard code is as follows:

<table>
  <tr>
    <th>zeroclipboard-rails gem version</th>
    <th>ZeroClipboard version</th>
    <th>Manual patches</th>
  </tr>
  <tr>
    <td><a href="https://rubygems.org/gems/zeroclipboard-rails/versions/0.0.3">0.0.3</a></td>
    <td><a href="https://github.com/zeroclipboard/ZeroClipboard/tree/v1.1.7">1.1.7</a></td>
    <td>
       Includes workaround for <a href="https://github.com/zeroclipboard/ZeroClipboard/issues/149">CSS zoom bug</a>
    </td>
  </tr>
</table>


## Credits

Credits entirely to the team behind [ZeroClipboard](https://github.com/jonrohan/ZeroClipboard)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
