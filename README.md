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
internet.  

Like `img` tags, `video` tags can contain a `src` attribute pointed to the file
we want to play.  This file could be accessed using a _relative_, local folder
path, or an _absolute_ URL path.

However, the `src` attribute is optional for `video` tags. Alternatively, the
`video` tag is designed so that it can _wrap_ around multiple, separate `source`
tags. A basic `video` element, complete with source tags would look like this:

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

The `source` tag is uniquely used for multiple media resources, as we have in
our example.  The `src` attribute is always required, as it is the location of
the file we want to play.  The `type` tag is helpful in defining what format the
media is in.

## Reinforce What We Have Learned By Building a Video Element

Its time to apply what we've just learned! In `index.html`, some basic code is
provided.  Your task is to create a video element complete with _two_ video
sources and the attributes we've discussed. For this portion of the lesson, we
will be using a video stored elsewhere on the internet.. a _dramatic_ real
estate video. There are two video formats, MP4 and OGV:

**Caution: The music in these videos may be loud initially**

* MP4 video: http://ironboard-curriculum-content.s3.amazonaws.com/front-end/lab-assets/real-estate.mp4
* OGV video: http://ironboard-curriculum-content.s3.amazonaws.com/front-end/lab-assets/real-estate.ogv

To complete this lab:

1. Create a `video` tag with the attributes `controls` and `autoplay`
2. Set the width of `video` to '600px', and the height to '400px'
2. Create a `source` tag for the MP4 video that has `src` and `type` attributes
3. Create a fall back `source` tag for the OGV video that has `src` and `type` attributes

Run `learn` and follow the test messages as you go.  You can also run
`httpserver` or open `index.html` in a browser tab to see your work as you build
it. Run `learn submit` once you've passed all the tests.

### Conclusion

With the `video` tag, we can spice up our plain old text websites, whether it is
a demo reel for a company product or a personal vlog.

We can also customize the size of the video on our page and even make sure our
video is viewable by every site visitor, not just those with the most up-to-date
browsers.

In addition to `video`, there is also an `audio` tag that plays MP3, OGG and WAV
files.  The `audio` tag works the same way as `video`, has the same `controls`
and `autoplay` attributes, and also uses the `source` tag! You've actually
learned two useful HTML5 elements in one!


<p data-visibility='hidden'>View <a
href='https://learn.co/lessons/html5-video-embed-code-along' title='HTML5 Video
Embed Code-Along'>HTML5 Video Embed Code-Along</a> on Learn.co and start
learning to code for free.</p>
