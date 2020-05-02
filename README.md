# image_viewer

Flutter image viewer library gives you the opportunity to easly integrate full screen images slider.

## Getting Started

### Add dependency

```yaml
dependencies:
  image_viewer: ^0.5.0
```

### Example

```
    ImageViewer.showImageSlider(
      images: [
        //List of images' URLs
      ],
    );
```

![](https://i.ibb.co/t2gy889/ezgif-com-video-to-gif.gif)

 You can also pass your starting position for the image viewer, so if you pass '1', the slider will start from the second item from your list.


```
    ImageViewer.showImageSlider(
      images: [
        //List of images' URLs
      ],
      startingPosition: 1,
    );
```

![](https://i.ibb.co/sQV6cNp/ezgif-com-video-to-gif-1.gif)


### Platforms

This packages only supports Android for now, very soon will be implemented for iOS devices.


### Shoutout

Shoutout to [FrescoImageViewer](https://github.com/stfalcon-studio/FrescoImageViewer)

