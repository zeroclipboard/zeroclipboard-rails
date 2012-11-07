# Zeroclipboard::Rails

Adds the Zeroclipboard libary to your Rails 3.x app.
If you would like to use JQuery try the [zclip-rails](https://github.com/HaNdTriX/zclip-rails) libary instead.

## Installation

Add this line to your application's Gemfile:

    gem 'zeroclipboard-rails'

And then execute:

    $ bundle

Add this line to your application.js file:

    //= require zero-clipboard

## Usage

### Clients

Now you are ready to create one or more Clients. A client is a single instance of the clipboard library on the page, linked to a particular button or other DOM element. You probably only need a single instance, but if you have multiple copy-to-clipboard buttons on your page, potentially containing different text, you can activate an instance for each. Here is how to create a client instance:

    var clip = new ZeroClipboard.Client();

Next, you can set some options.

### Setting Options

Once you have your client instance, you can set some options. These include setting the initial text to be copied, amongst other things. The following subsections describe all the available options you can set.

### Text To Copy

This function allows you to set the text to be copied to the clipboard, once the user clicks on the control. You can call this function at any time; when the page first loads, or later in an onMouseOver or onMouseDown handler. Example:

    clip.setText( "Copy me!" );

### Hand Cursor

This setting controls whether the "hand" or "arrow" cursor is shown when the mouse hovers over the Flash movie. Here is an example:

    clip.setHandCursor( true );

The only values accepted are true (show "hand" cursor), or false (show "arrow" cursor). The default is true. You can set this option at any time.

### Gluing

Gluing refers to the process of "linking" the Flash movie to a DOM element on the page. Meaning, the library will automatically generate a movie that is the exact size of the DOM element, and float it just above the element. Since the Flash movie is completely transparent, the user sees nothing out of the ordinary.

The Flash movie receives the click event and copies the current text (last set with setText()) to the clipboard (a requirement of Flash Player 10 is that a user click event inside the movie must initiate the thread that interacts with the clipboard). Also, mouse actions like hovering and mouse-down generate events that you can capture (see Event Handlers below) and set CSS classes on your DOM element too (see CSS Effects below).

Here is how to glue your clip library instance to a DOM element:

     clip.glue( 'd_clip_button' );

You can pass in a DOM element ID (as shown above), or a reference to the actual DOM element object itself. The rest all happens automatically -- the movie is created, all your options set, and it is floated above the element, awaiting clicks from the user.

The glue system is an optional implementation. If you would prefer to handle your own implementation of the Flash movie, see Custom Implementation below.

### Recommended Implementation

It is highly recommended you create a "container" DIV element around your button, set its CSS "position" to "relative", and place your button just inside. Then, pass two arguments to glue(), your button DOM element or ID, and the container DOM element or ID. This way Zero Clipboard can position the floating Flash movie relative to the container DIV (not the page body), resulting in much more exact positioning. Example (HTML):

    <div id="d_clip_container" style="position:relative">
      <div id="d_clip_button">Copy to Clipboard</div>
    </div>

And the code:

    clip.glue( 'd_clip_button', 'd_clip_container' );

Note that gluing to a container element does not work with the reposition() method (see next section).


For all usage options please visit the [zeroclipboard doc page](http://code.google.com/p/zeroclipboard/wiki/Instructions)

## Browser Support

The Zero Clipboard Library has been tested on the following browsers / platforms:

<table>
    <tr>
      <td> <strong>Browser</strong></td>
      <td> <strong>Windows XP SP3</strong></td>
      <td> <strong>Windows Vista</strong></td>
      <td> <strong>Mac OS X Leopard</strong></td>
    </tr> 
    <tr>
      <td> Internet Exploder </td>
      <td> 7.0 </td>
      <td> 7.0 </td>
      <td> - </td>
    </tr> <tr>
      <td> Firefox </td>
      <td> 3.0 </td>
      <td> 3.0 </td>
      <td> 3.0 </td>
    </tr> <tr>
      <td> Safari </td>
      <td> - </td>
      <td> - </td>
      <td> 3.0 </td>
    </tr> <tr>
      <td> Google Chrome </td>
      <td> 1.0 </td>
      <td> 1.0 </td>
      <td> - </td>
    </tr> 
</table>

Adobe Flash Flash Player versions 9 and 10 are supported.

### Credits

Thanks to Joseph Huckaby and all the [contributers](http://code.google.com/u/100866768200529838600/)!


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
