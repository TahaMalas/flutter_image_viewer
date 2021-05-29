# image_viewer

Flutter image viewer library gives you the opportunity to easly integrate full screen images slider.

## Getting Started

### Add dependency

```yaml
dependencies:
  image_viewer: ^1.5.0
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


![](https://media.giphy.com/media/fY5XOEdmnQ7EtQCemV/giphy.gif)


### Platforms

This pacakges is a stable version for both Android and iOS


### Dependencies

For Android: [FrescoImageViewer](https://github.com/stfalcon-studio/FrescoImageViewer)

For iOS: [Lightbox](https://github.com/hyperoslo/Lightbox)



