# HTML5 Video Embed Code-Along

## Problem Statement

Adding images to HTML content is a great way to make your websites more
appealing and engaging for your users. Sometimes though, we want _just a little
more_, a way for   Sometimes, we want to provide some _video content_.

In the past, adding video to HTML was only possible using the `iframe` tag.
This is still absolutely possible, and sites like [Youtube](youtube.com) still
provide iframe code as a default option. However, with HTML5, a _new_ tag was
introduced: `video`.  The `video` tag provides a more _semantic_ method for
including video, and allows for some customization specific to videos that
iframe does not.  Namely, with the `video` tag, we can provide multiple video
source links as well as fall back messaging in the event that a site visitor is
using an out of date browser.

In this lesson, we will be exploring the HTML `video` tag then applying what
we've learned in a brief lab.

## Objectives

1. Introduce the HTML `video` tag and its attributes
2. Practice using the `video` tag by creating our own

## Introduce Embedded Videos

The `video` tag, similar to `img`, can display video files stored locally (i.g.
in a 'videos' folder within your website) or videos from somewhere else on the
internet.  In this  lesson, we will be using a video stored elsewhere on the
internet.. a _dramatic_ real estate video. There are two video formats, MP4 and
OGV:

**Caution: The music in these videos may be loud initially**

* MP4 video: http://ironboard-curriculum-content.s3.amazonaws.com/front-end/lab-assets/real-estate.mp4
* OGV video: http://ironboard-curriculum-content.s3.amazonaws.com/front-end/lab-assets/real-estate.ogv

Like `img` tags, `video` tags can contain a `src` attribute pointed to the file we want to play.  This file could be accessed using a _relative_, local folder path, or an _absolute_ URL path.

However, unlike `img`, `src` is optional. Alternatively, the `video` tag is designed
so that it can _wrap_ around multiple, separate `source` tags. A basic `video`
element, complete with source tags would look like this:

```html
<video>
  <source src="https://s3.amazonaws.com/ironboard-learn/cat_video.mp4" type="video/mp4">
  <source src="https://s3.amazonaws.com/ironboard-learn/cat_video.ogv" type="video/ogg">
</video>
```

Why two sources? Compatibility! When HTML is rendered, your browser will try to
load the first source.  If it fails, it will _fall back_ to the second source.

All modern browsers support MP4 files, so if we had the above video on a
website, its likely that more than 99% of visitors will see the MP4 version.
However, in the chance that a site visitor is still using an older version of a
browser like Firefox, the MP4 file will fail to load and the OGV file will be
loaded instead. It is still useful to have an alternate video format for this
reason.

In addition to multiple sources, we can provide an additional fall back, a
_message_ to users in the even that they are using a browser that is _so_ out of
date, it doesn't support HTML5.  In that case, we can add something like this:

```html
<video>
  <source src="https://s3.amazonaws.com/ironboard-learn/cat_video.mp4" type="video/mp4">
  <source src="https://s3.amazonaws.com/ironboard-learn/cat_video.ogv" type="video/ogg">
  Your browser does not support HTML5 video  <a href="https://browsehappy.com/" target="_blank">Please upgrade your browser</a>
</video>
```

If a user was still hanging on to Internet Explorer 8 (they are out there!),
instead of video content, they will see the message "Your browser does not
support HTML5 video", followed by a link to [browsehappy.com](browsehappy.com),
where they can download an up-to-date browser.

The `video` tag has some important attributes to note:

* `controls` - when this tag is included, the embedded video will always show video controls
* `autoplay` - when this tag is included, the video will play on page load, rather than waiting for a user to click play


The `width` and `height` attributes are also worth noting. These set the size of the
video, just as with other HTML tags.  However, it is good practice to set these.
Without them, the video element may flicker on page load before it loads.

## Reinforce What We Have Learned By Building a Video Element

Let's go ahead and add a `<video>` tags to our `index.html` page.

just
below our paragraphs of text. Before adding a source, we'll add one attribute
to the opening `<video>` tag, `controls`. This will indicate to the browser to
always show controls for the embedded video.

Next, we'll add the source. Inside the `<video` tags, add `<source>`, and then,
as attributes, add in `src` and `type`. For our `src` attribute, we'll point it
to our `.mp4` video using a relative path to the file. We also want to
designate the type of this source as "video/mp4". At this point, our code will
look like this:

```html
<video controls>
  <source src="videos/real-estate.mp4" type="video/mp4">
</video>
```

Now we'll add _a second source_, but change the source to
"videos/real-estate.ogv", and the type to "video/ogg".

We can also add a message inside the `<video>` tags. This message will be shown
if a user's browser doesn't support the HTML5 video element. The message can
simply be "Your browser does not support HTML5 video", but we want to be nice
to our users, so we can also go ahead and add a link in this message that opens
a new page and navigates to a useful site such as
[https://browsehappy.com/](https://browsehappy.com/).

```html
<video controls
  <source src="videos/real-estate.mp4" type="video/mp4">
  <source src="videos/real-estate.ogv" type="video/ogg">
  Your browser does not support HTML5 video.  <a href="https://browsehappy.com/" target="_blank">Please upgrade your browser</a>
</video>
```

Now, if we test out our site in multiple browsers, we can see how our source
files work. In Chrome and Safari, for instance, the `.mp4` version of the video
will play. Opera and Firefox, on the other hand, will play the `.ogv` file.
Pretty much all modern browsers support at least one of these file types, so
we'd have to dig up an old, out of date browser to see our message and link.

### Wrapping Up



<p data-visibility='hidden'>View <a
href='https://learn.co/lessons/html5-video-embed-code-along' title='HTML5 Video
Embed Code-Along'>HTML5 Video Embed Code-Along</a> on Learn.co and start
learning to code for free.</p>
