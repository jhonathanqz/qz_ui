import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

class CacheImageWidget extends StatelessWidget {
  const CacheImageWidget({
    Key? key,
    required this.imageUrl,
    this.colorLoading,
    this.iconColor = Colors.black,
    this.isVisibilityError = true,
    this.boxFit,
    this.iconError,
    this.isProduct = false,
  }) : super(key: key);
  final String imageUrl;
  final Color iconColor;
  final bool isVisibilityError;
  final BoxFit? boxFit;
  final IconData? iconError;
  final bool isProduct;
  final Color? colorLoading;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: boxFit ?? BoxFit.contain,
      imageUrl: imageUrl,
      //maxHeightDiskCache: 160,
      //maxWidthDiskCache: 160,
      placeholder: (context, url) => Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(
            colorLoading ?? Colors.black,
          ),
        ),
      ),
      errorWidget: (context, url, error) => Visibility(
        visible: isVisibilityError,
        child: isProduct
            ? Image.asset('assets/urlDefault.jpeg')
            : Icon(
                iconError ?? Icons.error,
                color: iconColor,
              ),
      ),
    );
  }
}
