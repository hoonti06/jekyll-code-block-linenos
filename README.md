jekyll-code-block-linenos
==================

'jekyll-code-block-linenos' can replace 3-backticks code-block including keyword `linenos` in markdown(Eg. `` ```cpp linenos`` ) with [highlight tag including linenos](https://jekyllrb.com/docs/liquid/tags/#line-numbers)(Eg. `{% hightlight cpp linenos %}`) before rendering markdown to html.

<br>

'jekyll-code-block-linenos' uses [Jekyll Hook](https://jekyllrb.com/docs/plugins/hooks).

**jekyll-code-block-linenos' is available only when using gem `rouge`.**

<br>

## Requirements

* Jekyll, version `4.0` or higher
* [rouge](https://rouge.jneen.net), version `3.0` or higher

<br>

## Installation

Run `bundle install` after adding the gem to your Jekyll Gemfile:

```ruby
gem "jekyll-code-block-linenos"
```

<br>

## Configuration

Add the gem to the Jekyll `_config.yml`:
```yml
plugin:
  - jekyll-code-block-linenos
```

<br>

## Usage
Write `` ```{language} linenos`` in markdown as follows
~~~
```java linenos
import java.util.*;
import java.io.*;

public class Main {
	public static void main(String[] args) {
		System.out.println("Hello world");
	}
}
```
~~~

<br>
Then, the rendered html result looks like this.

![](https://user-images.githubusercontent.com/17792043/145128938-eba4a04a-86c4-4d6f-a9cc-0ad711b5dbe2.png)

<br>

## Contributing
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

<br>

## License
[MIT License](LICENSE).
