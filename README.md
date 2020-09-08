# image_viewer

Flutter image viewer library gives you the opportunity to easly integrate full screen images slider.

## Getting Started

### Add dependency

```yaml
dependencies:
  image_viewer: ^0.5.2
```

### Example

```
    ImageViewer.showImageSlider(
      images: [
        //List of images' URLs
      ],
    );
```

![](https://media.giphy.com/media/l0uV5AudZ3o6mnz9dc/giphy.gif)

 You can also pass your starting position for the image viewer, so if you pass '1', the slider will start from the second item from your list.


```
    ImageViewer.showImageSlider(
      images: [
        //List of images' URLs
      ],
      startingPosition: 1,
    );
```

![](https://media.giphy.com/media/ekM4QFeYolP3E1Su64/giphy.gif)


### Platforms

This packages only supports Android for now, very soon will be implemented for iOS devices.


### Shoutout

Shoutout to [FrescoImageViewer](https://github.com/stfalcon-studio/FrescoImageViewer)

